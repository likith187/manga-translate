.class public final Lcom/google/android/gms/common/api/internal/r0;
.super Lcom/google/android/gms/common/api/internal/p0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/h;Lw3/j;)V
    .locals 0

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/p0;-><init>(ILw3/j;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Lcom/google/android/gms/common/api/internal/o;Z)V
    .locals 0

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/x;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/x;->x()Ljava/util/Map;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/x;)[Lcom/google/android/gms/common/Feature;
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/x;->x()Ljava/util/Map;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/x;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/x;->x()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/p0;->b:Lw3/j;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lw3/j;->e(Ljava/lang/Object;)Z

    return-void
.end method
