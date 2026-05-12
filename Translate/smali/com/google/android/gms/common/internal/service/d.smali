.class public final Lcom/google/android/gms/common/internal/service/d;
.super Lcom/google/android/gms/common/api/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/n;


# static fields
.field private static final k:Lcom/google/android/gms/common/api/a$g;

.field private static final l:Lcom/google/android/gms/common/api/a$a;

.field private static final m:Lcom/google/android/gms/common/api/a;

.field public static final synthetic n:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/service/d;->k:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lcom/google/android/gms/common/internal/service/c;

    invoke-direct {v1}, Lcom/google/android/gms/common/internal/service/c;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/internal/service/d;->l:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "ClientTelemetry.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lcom/google/android/gms/common/internal/service/d;->m:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/internal/o;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/internal/service/d;->m:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/d$a;->c:Lcom/google/android/gms/common/api/d$a;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/d$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/internal/TelemetryData;)Lw3/i;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/api/internal/m;->a()Lcom/google/android/gms/common/api/internal/m$a;

    move-result-object v0

    sget-object v1, Lt3/d;->a:Lcom/google/android/gms/common/Feature;

    filled-new-array {v1}, [Lcom/google/android/gms/common/Feature;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/m$a;->d([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/m$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/m$a;->c(Z)Lcom/google/android/gms/common/api/internal/m$a;

    new-instance v1, Lcom/google/android/gms/common/internal/service/b;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/internal/service/b;-><init>(Lcom/google/android/gms/common/internal/TelemetryData;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/m$a;->b(Lcom/google/android/gms/common/api/internal/k;)Lcom/google/android/gms/common/api/internal/m$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/m$a;->a()Lcom/google/android/gms/common/api/internal/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/d;->c(Lcom/google/android/gms/common/api/internal/m;)Lw3/i;

    move-result-object p0

    return-object p0
.end method
