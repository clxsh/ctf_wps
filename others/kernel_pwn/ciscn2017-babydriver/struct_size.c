struct cred {
	atomic_t	usage;
#ifdef CONFIG_DEBUG_CREDENTIALS
	atomic_t	subscribers;	/* number of processes subscribed */
	void		*put_addr;
	unsigned	magic;
#define CRED_MAGIC	0x43736564
#define CRED_MAGIC_DEAD	0x44656144
#endif
	kuid_t		uid;		/* real UID of the task */
	kgid_t		gid;		/* real GID of the task */
	kuid_t		suid;		/* saved UID of the task */
	kgid_t		sgid;		/* saved GID of the task */
	kuid_t		euid;		/* effective UID of the task */
	kgid_t		egid;		/* effective GID of the task */
	kuid_t		fsuid;		/* UID for VFS ops */
	kgid_t		fsgid;		/* GID for VFS ops */
	unsigned	securebits;	/* SUID-less security management */
	kernel_cap_t	cap_inheritable; /* caps our children can inherit */
	kernel_cap_t	cap_permitted;	/* caps we're permitted */
	kernel_cap_t	cap_effective;	/* caps we can actually use */
	kernel_cap_t	cap_bset;	/* capability bounding set */
	kernel_cap_t	cap_ambient;	/* Ambient capability set */
#ifdef CONFIG_KEYS
	unsigned char	jit_keyring;	/* default keyring to attach requested
					 * keys to */
	struct key __rcu *session_keyring; /* keyring inherited over fork */
	struct key	*process_keyring; /* keyring private to this process */
	struct key	*thread_keyring; /* keyring private to this thread */
	struct key	*request_key_auth; /* assumed request_key authority */
#endif
#ifdef CONFIG_SECURITY
	void		*security;	/* subjective LSM security */
#endif
	struct user_struct *user;	/* real user ID subscription */
	struct user_namespace *user_ns; /* user_ns the caps and keyrings are relative to. */
	struct group_info *group_info;	/* supplementary groups for euid/fsgid */
	struct rcu_head	rcu;		/* RCU deletion hook */
};

typedef struct {
	int counter;
} atomic_t;

typedef struct {
	uid_t val;
} kuid_t;
typedef __kernel_uid32_t	uid_t;
typedef unsigned int	__kernel_uid32_t;

typedef struct {
	gid_t val;
} kgid_t;
typedef __kernel_gid32_t	gid_t;
typedef unsigned int	__kernel_gid32_t;

#define _KERNEL_CAPABILITY_U32S    _LINUX_CAPABILITY_U32S_3
#define _LINUX_CAPABILITY_U32S_3     2
typedef unsigned int __u32;
typedef struct kernel_cap_struct {
	__u32 cap[_KERNEL_CAPABILITY_U32S];
} kernel_cap_t;

struct key {
	atomic_t		usage;		/* number of references */
	key_serial_t		serial;		/* key serial number */
	union {
		struct list_head graveyard_link;
		struct rb_node	serial_node;
	};
	struct rw_semaphore	sem;		/* change vs change sem */
	struct key_user		*user;		/* owner of this key */
	void			*security;	/* security data for this key */
	union {
		time_t		expiry;		/* time at which key expires (or 0) */
		time_t		revoked_at;	/* time at which key was revoked */
	};
	time_t			last_used_at;	/* last time used for LRU keyring discard */
	kuid_t			uid;
	kgid_t			gid;
	key_perm_t		perm;		/* access permissions */
	unsigned short		quotalen;	/* length added to quota */
	unsigned short		datalen;	/* payload data length
						 * - may not match RCU dereferenced payload
						 * - payload should contain own length
						 */

#ifdef KEY_DEBUGGING
	unsigned		magic;
#define KEY_DEBUG_MAGIC		0x18273645u
#define KEY_DEBUG_MAGIC_X	0xf8e9dacbu
#endif

	unsigned long		flags;		/* status flags (change with bitops) */
#define KEY_FLAG_INSTANTIATED	0	/* set if key has been instantiated */
#define KEY_FLAG_DEAD		1	/* set if key type has been deleted */
#define KEY_FLAG_REVOKED	2	/* set if key had been revoked */
#define KEY_FLAG_IN_QUOTA	3	/* set if key consumes quota */
#define KEY_FLAG_USER_CONSTRUCT	4	/* set if key is being constructed in userspace */
#define KEY_FLAG_NEGATIVE	5	/* set if key is negative */
#define KEY_FLAG_ROOT_CAN_CLEAR	6	/* set if key can be cleared by root without permission */
#define KEY_FLAG_INVALIDATED	7	/* set if key has been invalidated */
#define KEY_FLAG_TRUSTED	8	/* set if key is trusted */
#define KEY_FLAG_TRUSTED_ONLY	9	/* set if keyring only accepts links to trusted keys */
#define KEY_FLAG_BUILTIN	10	/* set if key is builtin */
#define KEY_FLAG_ROOT_CAN_INVAL	11	/* set if key can be invalidated by root without permission */

	/* the key type and key description string
	 * - the desc is used to match a key against search criteria
	 * - it should be a printable string
	 * - eg: for krb5 AFS, this might be "afs@REDHAT.COM"
	 */
	union {
		struct keyring_index_key index_key;
		struct {
			struct key_type	*type;		/* type of key */
			char		*description;
		};
	};

	/* key data
	 * - this is used to hold the data actually used in cryptography or
	 *   whatever
	 */
	union {
		union key_payload payload;
		struct {
			/* Keyring bits */
			struct list_head name_link;
			struct assoc_array keys;
		};
		int reject_error;
	};
};