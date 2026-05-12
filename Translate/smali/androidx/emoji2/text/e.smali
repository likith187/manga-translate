.class public Landroidx/emoji2/text/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/e$e;,
        Landroidx/emoji2/text/e$j;,
        Landroidx/emoji2/text/e$c;,
        Landroidx/emoji2/text/e$h;,
        Landroidx/emoji2/text/e$d;,
        Landroidx/emoji2/text/e$b;,
        Landroidx/emoji2/text/e$a;,
        Landroidx/emoji2/text/e$g;,
        Landroidx/emoji2/text/e$f;,
        Landroidx/emoji2/text/e$i;
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/Object;

.field private static final p:Ljava/lang/Object;

.field private static volatile q:Landroidx/emoji2/text/e;


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final b:Ljava/util/Set;

.field private volatile c:I

.field private final d:Landroid/os/Handler;

.field private final e:Landroidx/emoji2/text/e$b;

.field final f:Landroidx/emoji2/text/e$h;

.field private final g:Landroidx/emoji2/text/e$j;

.field final h:Z

.field final i:Z

.field final j:[I

.field private final k:Z

.field private final l:I

.field private final m:I

.field private final n:Landroidx/emoji2/text/e$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/emoji2/text/e;->o:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/emoji2/text/e;->p:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroidx/emoji2/text/e$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    const/4 v0, 0x3

    iput v0, p0, Landroidx/emoji2/text/e;->c:I

    iget-boolean v0, p1, Landroidx/emoji2/text/e$c;->c:Z

    iput-boolean v0, p0, Landroidx/emoji2/text/e;->h:Z

    iget-boolean v0, p1, Landroidx/emoji2/text/e$c;->d:Z

    iput-boolean v0, p0, Landroidx/emoji2/text/e;->i:Z

    iget-object v0, p1, Landroidx/emoji2/text/e$c;->e:[I

    iput-object v0, p0, Landroidx/emoji2/text/e;->j:[I

    iget-boolean v0, p1, Landroidx/emoji2/text/e$c;->g:Z

    iput-boolean v0, p0, Landroidx/emoji2/text/e;->k:Z

    iget v0, p1, Landroidx/emoji2/text/e$c;->h:I

    iput v0, p0, Landroidx/emoji2/text/e;->l:I

    iget-object v0, p1, Landroidx/emoji2/text/e$c;->a:Landroidx/emoji2/text/e$h;

    iput-object v0, p0, Landroidx/emoji2/text/e;->f:Landroidx/emoji2/text/e$h;

    iget v0, p1, Landroidx/emoji2/text/e$c;->i:I

    iput v0, p0, Landroidx/emoji2/text/e;->m:I

    iget-object v0, p1, Landroidx/emoji2/text/e$c;->j:Landroidx/emoji2/text/e$e;

    iput-object v0, p0, Landroidx/emoji2/text/e;->n:Landroidx/emoji2/text/e$e;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/emoji2/text/e;->d:Landroid/os/Handler;

    new-instance v0, Landroidx/collection/b;

    invoke-direct {v0}, Landroidx/collection/b;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/e;->b:Ljava/util/Set;

    iget-object v1, p1, Landroidx/emoji2/text/e$c;->b:Landroidx/emoji2/text/e$j;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/emoji2/text/e$d;

    invoke-direct {v1}, Landroidx/emoji2/text/e$d;-><init>()V

    :goto_0
    iput-object v1, p0, Landroidx/emoji2/text/e;->g:Landroidx/emoji2/text/e$j;

    iget-object v1, p1, Landroidx/emoji2/text/e$c;->f:Ljava/util/Set;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, Landroidx/emoji2/text/e$c;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance p1, Landroidx/emoji2/text/e$a;

    invoke-direct {p1, p0}, Landroidx/emoji2/text/e$a;-><init>(Landroidx/emoji2/text/e;)V

    iput-object p1, p0, Landroidx/emoji2/text/e;->e:Landroidx/emoji2/text/e$b;

    invoke-direct {p0}, Landroidx/emoji2/text/e;->m()V

    return-void
.end method

.method static synthetic a(Landroidx/emoji2/text/e;)Landroidx/emoji2/text/e$j;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/e;->g:Landroidx/emoji2/text/e$j;

    return-object p0
.end method

.method static synthetic b(Landroidx/emoji2/text/e;)Landroidx/emoji2/text/e$e;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/e;->n:Landroidx/emoji2/text/e$e;

    return-object p0
.end method

.method public static c()Landroidx/emoji2/text/e;
    .locals 4

    sget-object v0, Landroidx/emoji2/text/e;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/emoji2/text/e;->q:Landroidx/emoji2/text/e;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    invoke-static {v2, v3}, Lc0/h;->g(ZLjava/lang/String;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static f(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/emoji2/text/h;->b(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/h;->c(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static h(Landroidx/emoji2/text/e$c;)Landroidx/emoji2/text/e;
    .locals 2

    sget-object v0, Landroidx/emoji2/text/e;->q:Landroidx/emoji2/text/e;

    if-nez v0, :cond_1

    sget-object v1, Landroidx/emoji2/text/e;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroidx/emoji2/text/e;->q:Landroidx/emoji2/text/e;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/emoji2/text/e;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/e;-><init>(Landroidx/emoji2/text/e$c;)V

    sput-object v0, Landroidx/emoji2/text/e;->q:Landroidx/emoji2/text/e;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static i()Z
    .locals 1

    sget-object v0, Landroidx/emoji2/text/e;->q:Landroidx/emoji2/text/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/emoji2/text/e;->e()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/e;->m:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/e;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Landroidx/emoji2/text/e;->e()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/emoji2/text/e;->e:Landroidx/emoji2/text/e$b;

    invoke-virtual {p0}, Landroidx/emoji2/text/e$b;->a()V

    :cond_1
    return-void

    :goto_1
    iget-object p0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public d()I
    .locals 0

    iget p0, p0, Landroidx/emoji2/text/e;->l:I

    return p0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/e;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public j()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/emoji2/text/e;->k:Z

    return p0
.end method

.method public l()V
    .locals 3

    iget v0, p0, Landroidx/emoji2/text/e;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v0, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    invoke-static {v2, v0}, Lc0/h;->g(ZLjava/lang/String;)V

    invoke-direct {p0}, Landroidx/emoji2/text/e;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/e;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    iput v1, p0, Landroidx/emoji2/text/e;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p0, p0, Landroidx/emoji2/text/e;->e:Landroidx/emoji2/text/e$b;

    invoke-virtual {p0}, Landroidx/emoji2/text/e$b;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method n(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x2

    :try_start_0
    iput v1, p0, Landroidx/emoji2/text/e;->c:I

    iget-object v1, p0, Landroidx/emoji2/text/e;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/emoji2/text/e;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Landroidx/emoji2/text/e;->d:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji2/text/e$g;

    iget p0, p0, Landroidx/emoji2/text/e;->c:I

    invoke-direct {v2, v0, p0, p1}, Landroidx/emoji2/text/e$g;-><init>(Ljava/util/Collection;ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method o()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Landroidx/emoji2/text/e;->c:I

    iget-object v1, p0, Landroidx/emoji2/text/e;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/emoji2/text/e;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Landroidx/emoji2/text/e;->d:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji2/text/e$g;

    iget p0, p0, Landroidx/emoji2/text/e;->c:I

    invoke-direct {v2, v0, p0}, Landroidx/emoji2/text/e$g;-><init>(Ljava/util/Collection;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public p(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/e;->q(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public q(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/emoji2/text/e;->r(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public r(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/text/e;->s(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public s(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;
    .locals 7

    invoke-direct {p0}, Landroidx/emoji2/text/e;->k()Z

    move-result v0

    const-string v1, "Not initialized yet"

    invoke-static {v0, v1}, Lc0/h;->g(ZLjava/lang/String;)V

    const-string v0, "start cannot be negative"

    invoke-static {p2, v0}, Lc0/h;->d(ILjava/lang/String;)I

    const-string v0, "end cannot be negative"

    invoke-static {p3, v0}, Lc0/h;->d(ILjava/lang/String;)I

    const-string v0, "maxEmojiCount cannot be negative"

    invoke-static {p4, v0}, Lc0/h;->d(ILjava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p2, p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "start should be <= than end"

    invoke-static {v2, v3}, Lc0/h;->b(ZLjava/lang/Object;)V

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p2, v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    const-string v3, "start should be < than charSequence length"

    invoke-static {v2, v3}, Lc0/h;->b(ZLjava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p3, v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    const-string v3, "end should be < than charSequence length"

    invoke-static {v2, v3}, Lc0/h;->b(ZLjava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_7

    if-ne p2, p3, :cond_4

    goto :goto_4

    :cond_4
    if-eq p5, v1, :cond_6

    const/4 v1, 0x2

    if-eq p5, v1, :cond_5

    iget-boolean v0, p0, Landroidx/emoji2/text/e;->h:Z

    :cond_5
    move v6, v0

    goto :goto_3

    :cond_6
    move v6, v1

    :goto_3
    iget-object v1, p0, Landroidx/emoji2/text/e;->e:Landroidx/emoji2/text/e$b;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/emoji2/text/e$b;->b(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_4
    return-object p1
.end method

.method public t(Landroidx/emoji2/text/e$f;)V
    .locals 3

    const-string v0, "initCallback cannot be null"

    invoke-static {p1, v0}, Lc0/h;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/e;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/emoji2/text/e;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/e;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/emoji2/text/e;->d:Landroid/os/Handler;

    new-instance v1, Landroidx/emoji2/text/e$g;

    iget v2, p0, Landroidx/emoji2/text/e;->c:I

    invoke-direct {v1, p1, v2}, Landroidx/emoji2/text/e$g;-><init>(Landroidx/emoji2/text/e$f;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    iget-object p0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public u(Landroidx/emoji2/text/e$f;)V
    .locals 1

    const-string v0, "initCallback cannot be null"

    invoke-static {p1, v0}, Lc0/h;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Landroidx/emoji2/text/e;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/emoji2/text/e;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public v(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/text/e;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_1
    iget-object p0, p0, Landroidx/emoji2/text/e;->e:Landroidx/emoji2/text/e$b;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/e$b;->c(Landroid/view/inputmethod/EditorInfo;)V

    :cond_2
    :goto_0
    return-void
.end method
