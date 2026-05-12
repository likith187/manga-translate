.class final Lcom/google/android/gms/internal/mlkit_language_id_common/k5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/d;


# static fields
.field static final a:Lcom/google/android/gms/internal/mlkit_language_id_common/k5;

.field private static final b:Lq4/c;

.field private static final c:Lq4/c;

.field private static final d:Lq4/c;

.field private static final e:Lq4/c;

.field private static final f:Lq4/c;

.field private static final g:Lq4/c;

.field private static final h:Lq4/c;

.field private static final i:Lq4/c;

.field private static final j:Lq4/c;

.field private static final k:Lq4/c;

.field private static final l:Lq4/c;

.field private static final m:Lq4/c;

.field private static final n:Lq4/c;

.field private static final o:Lq4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/k5;

    const-string v0, "appId"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->b:Lq4/c;

    const-string v0, "appVersion"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->c:Lq4/c;

    const-string v0, "firebaseProjectId"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->d:Lq4/c;

    const-string v0, "mlSdkVersion"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->e:Lq4/c;

    const-string v0, "tfliteSchemaVersion"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->f:Lq4/c;

    const-string v0, "gcmSenderId"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->g:Lq4/c;

    const-string v0, "apiKey"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->h:Lq4/c;

    const-string v0, "languages"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->i:Lq4/c;

    const-string v0, "mlSdkInstanceId"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->j:Lq4/c;

    const-string v0, "isClearcutClient"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->k:Lq4/c;

    const-string v0, "isStandaloneMlkit"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->l:Lq4/c;

    const-string v0, "isJsonLogging"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->m:Lq4/c;

    const-string v0, "buildLevel"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->n:Lq4/c;

    const-string v0, "optionalModuleVersion"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->o:Lq4/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id_common/n9;

    check-cast p2, Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->b:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/n9;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->c:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/n9;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->d:Lq4/c;

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->e:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/n9;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p0, v1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->f:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/n9;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p0, v1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->g:Lq4/c;

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->h:Lq4/c;

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->i:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/n9;->a()Lcom/google/android/gms/internal/mlkit_language_id_common/nb;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->j:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/n9;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->k:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/n9;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->l:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/n9;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->m:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/n9;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->n:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/n9;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/k5;->o:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/n9;->f()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    return-void
.end method
