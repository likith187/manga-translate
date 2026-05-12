.class public final Lcom/google/android/gms/common/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/e$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/accounts/Account;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Set;

.field private final d:Ljava/util/Map;

.field private final e:I

.field private final f:Landroid/view/View;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lv3/a;

.field private j:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lv3/a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/accounts/Account;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/internal/e;->b:Ljava/util/Set;

    if-nez p3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/common/internal/e;->d:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/e;->f:Landroid/view/View;

    iput p4, p0, Lcom/google/android/gms/common/internal/e;->e:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/e;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/e;->h:Ljava/lang/String;

    if-nez p8, :cond_2

    sget-object p8, Lv3/a;->m:Lv3/a;

    :cond_2
    iput-object p8, p0, Lcom/google/android/gms/common/internal/e;->i:Lv3/a;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/e;->c:Ljava/util/Set;

    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a()Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method public b()Landroid/accounts/Account;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/accounts/Account;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v1, "com.google"

    invoke-direct {p0, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public c()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/e;->c:Ljava/util/Set;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/e;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/e;->b:Ljava/util/Set;

    return-object p0
.end method

.method public final f()Lv3/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/e;->i:Lv3/a;

    return-object p0
.end method

.method public final g()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/e;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/e;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final i(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/e;->j:Ljava/lang/Integer;

    return-void
.end method
