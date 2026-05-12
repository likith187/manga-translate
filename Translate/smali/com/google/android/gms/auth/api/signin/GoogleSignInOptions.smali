.class public Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a$d;
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field public static final p:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field public static final q:Lcom/google/android/gms/common/api/Scope;

.field public static final r:Lcom/google/android/gms/common/api/Scope;

.field public static final s:Lcom/google/android/gms/common/api/Scope;

.field public static final t:Lcom/google/android/gms/common/api/Scope;

.field public static final u:Lcom/google/android/gms/common/api/Scope;

.field private static final v:Ljava/util/Comparator;


# instance fields
.field final a:I

.field private final b:Ljava/util/ArrayList;

.field private c:Landroid/accounts/Account;

.field private f:Z

.field private final h:Z

.field private final i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/ArrayList;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->q:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->r:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "openid"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->s:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/games_lite"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->t:Lcom/google/android/gms/common/api/Scope;

    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    const-string v2, "https://www.googleapis.com/auth/games"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->u:Lcom/google/android/gms/common/api/Scope;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->o:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->d(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->p:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->v:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 11

    .line 2
    invoke-static/range {p9 .. p9}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->L0(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    .line 3
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->c:Landroid/accounts/Account;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->f:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->h:Z

    iput-boolean p6, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->i:Z

    iput-object p7, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->j:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->k:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-interface {p9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->l:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->n:Ljava/util/Map;

    iput-object p10, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->m:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lj3/a;)V
    .locals 11

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private static L0(Ljava/util/List;)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;->D0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public D0()Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->c:Landroid/accounts/Account;

    return-object p0
.end method

.method public E0()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->l:Ljava/util/ArrayList;

    return-object p0
.end method

.method public F0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->m:Ljava/lang/String;

    return-object p0
.end method

.method public G0()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->b:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public H0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->j:Ljava/lang/String;

    return-object p0
.end method

.method public I0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->i:Z

    return p0
.end method

.method public J0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->f:Z

    return p0
.end method

.method public K0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->h:Z

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->G0()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->G0()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->c:Landroid/accounts/Account;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->D0()Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->D0()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->H0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->H0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->i:Z

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->I0()Z

    move-result v2

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->f:Z

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->J0()Z

    move-result v2

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->h:Z

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->K0()Z

    move-result v2

    if-ne v1, v2, :cond_6

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->F0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_6
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->b:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Scope;->D0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v1, Lk3/a;

    invoke-direct {v1}, Lk3/a;-><init>()V

    invoke-virtual {v1, v0}, Lk3/a;->a(Ljava/lang/Object;)Lk3/a;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->c:Landroid/accounts/Account;

    invoke-virtual {v1, v0}, Lk3/a;->a(Ljava/lang/Object;)Lk3/a;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lk3/a;->a(Ljava/lang/Object;)Lk3/a;

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->i:Z

    invoke-virtual {v1, v0}, Lk3/a;->c(Z)Lk3/a;

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->f:Z

    invoke-virtual {v1, v0}, Lk3/a;->c(Z)Lk3/a;

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->h:Z

    invoke-virtual {v1, v0}, Lk3/a;->c(Z)Lk3/a;

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->m:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lk3/a;->a(Ljava/lang/Object;)Lk3/a;

    invoke-virtual {v1}, Lk3/a;->b()I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a:I

    invoke-static {p1}, Ln3/b;->a(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0}, Ln3/b;->g(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->G0()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Ln3/b;->q(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->D0()Landroid/accounts/Account;

    move-result-object v2

    invoke-static {p1, v0, v2, p2, v3}, Ln3/b;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->J0()Z

    move-result v0

    invoke-static {p1, p2, v0}, Ln3/b;->c(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->K0()Z

    move-result v0

    invoke-static {p1, p2, v0}, Ln3/b;->c(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->I0()Z

    move-result v0

    invoke-static {p1, p2, v0}, Ln3/b;->c(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->H0()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, v3}, Ln3/b;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x8

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->k:Ljava/lang/String;

    invoke-static {p1, p2, v0, v3}, Ln3/b;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->E0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, p2, v0, v3}, Ln3/b;->q(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 p2, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->F0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0, v3}, Ln3/b;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v1}, Ln3/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
