.class final Lcom/google/android/gms/internal/mlkit_language_id_common/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/d;


# static fields
.field static final a:Lcom/google/android/gms/internal/mlkit_language_id_common/b3;

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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/b3;

    const-string v0, "durationMs"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->b:Lq4/c;

    const-string v0, "errorCode"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->c:Lq4/c;

    const-string v0, "isColdCall"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->d:Lq4/c;

    const-string v0, "autoManageModelOnBackground"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->e:Lq4/c;

    const-string v0, "autoManageModelOnLowMemory"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->f:Lq4/c;

    const-string v0, "isNnApiEnabled"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->g:Lq4/c;

    const-string v0, "eventsCount"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->h:Lq4/c;

    const-string v0, "otherErrors"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->i:Lq4/c;

    const-string v0, "remoteConfigValueForAcceleration"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->j:Lq4/c;

    const-string v0, "isAccelerated"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->k:Lq4/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;

    check-cast p2, Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->b:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->c:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;->a()Lcom/google/android/gms/internal/mlkit_language_id_common/f7;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->d:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;->b()Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->e:Lq4/c;

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->f:Lq4/c;

    invoke-interface {p2, p0, p1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->g:Lq4/c;

    invoke-interface {p2, p0, p1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->h:Lq4/c;

    invoke-interface {p2, p0, p1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->i:Lq4/c;

    invoke-interface {p2, p0, p1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->j:Lq4/c;

    invoke-interface {p2, p0, p1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b3;->k:Lq4/c;

    invoke-interface {p2, p0, p1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    return-void
.end method
