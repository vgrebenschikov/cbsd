--- priv.h.bak	2015-01-29 12:43:48.000000000 +0300
+++ priv.h	2015-01-29 12:45:01.000000000 +0300
@@ -503,10 +503,11 @@
 #define	PRIV_KMEM_READ		680	/* Open mem/kmem for reading. */
 #define	PRIV_KMEM_WRITE		681	/* Open mem/kmem for writing. */
 
+#define	PRIV_DRI_DRIVER		682
 /*
  * Track end of privilege list.
  */
-#define	_PRIV_HIGHEST		682
+#define	_PRIV_HIGHEST		683
 
 /*
  * Validate that a named privilege is known by the privilege system.  Invalid
