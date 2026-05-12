.class public final Lcom/google/android/material/badge/BadgeState$State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/badge/BadgeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/badge/BadgeState$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/Integer;

.field private B:Ljava/lang/Integer;

.field private C:Ljava/lang/Integer;

.field private D:Ljava/lang/Integer;

.field private E:Ljava/lang/Integer;

.field private F:Ljava/lang/Integer;

.field private G:Ljava/lang/Boolean;

.field private a:I

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Integer;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/util/Locale;

.field private r:Ljava/lang/CharSequence;

.field private s:Ljava/lang/CharSequence;

.field private t:I

.field private u:I

.field private v:Ljava/lang/Integer;

.field private w:Ljava/lang/Boolean;

.field private x:Ljava/lang/Integer;

.field private y:Ljava/lang/Integer;

.field private z:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/badge/BadgeState$State$a;

    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeState$State$a;-><init>()V

    sput-object v0, Lcom/google/android/material/badge/BadgeState$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->l:I

    const/4 v0, -0x2

    .line 3
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->n:I

    .line 4
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->o:I

    .line 5
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->p:I

    .line 6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->w:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 8
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->l:I

    const/4 v0, -0x2

    .line 9
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->n:I

    .line 10
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->o:I

    .line 11
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->p:I

    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->w:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->a:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->b:Ljava/lang/Integer;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->c:Ljava/lang/Integer;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->f:Ljava/lang/Integer;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->h:Ljava/lang/Integer;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->i:Ljava/lang/Integer;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->j:Ljava/lang/Integer;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->k:Ljava/lang/Integer;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->l:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->m:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->n:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->o:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->p:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->r:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->s:Ljava/lang/CharSequence;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->t:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->v:Ljava/lang/Integer;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->x:Ljava/lang/Integer;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->y:Ljava/lang/Integer;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->z:Ljava/lang/Integer;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->A:Ljava/lang/Integer;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->B:Ljava/lang/Integer;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->C:Ljava/lang/Integer;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->F:Ljava/lang/Integer;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->D:Ljava/lang/Integer;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->E:Ljava/lang/Integer;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->w:Ljava/lang/Boolean;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->q:Ljava/util/Locale;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->G:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic A(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->x:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic C(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->x:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic E(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->n:I

    return p0
.end method

.method static synthetic F(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->y:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic H(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->y:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic J(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->n:I

    return p1
.end method

.method static synthetic K(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->z:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic L(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->z:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic M(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->A:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic O(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->A:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic P(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->B:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic Q(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->B:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic R(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->C:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic S(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->C:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic T(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->F:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic U(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->F:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic V(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->D:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic W(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->D:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic Y(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->E:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic Z(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->E:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->a:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->a:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->l:I

    return p0
.end method

.method static synthetic c0(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->G:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->p:I

    return p0
.end method

.method static synthetic d0(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->G:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic e(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->p:I

    return p1
.end method

.method static synthetic e0(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->q:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->l:I

    return p1
.end method

.method static synthetic f0(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->q:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic g(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic g0(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->h:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic h0(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i0(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->r:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic j0(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->r:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic k0(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->s:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic l(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->i:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic l0(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->s:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic m(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic m0(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->t:I

    return p0
.end method

.method static synthetic n(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->j:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic n0(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->t:I

    return p1
.end method

.method static synthetic o(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic o0(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->u:I

    return p0
.end method

.method static synthetic p(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->k:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic p0(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->u:I

    return p1
.end method

.method static synthetic q(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic r(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->b:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic r0(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->w:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic s(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic s0(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->w:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic t(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->f:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic t0(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->o:I

    return p0
.end method

.method static synthetic u(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic u0(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->o:I

    return p1
.end method

.method static synthetic w(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->c:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic y(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->v:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic z(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->v:Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->b:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->c:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->f:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->h:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->i:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->j:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->k:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->r:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->s:Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->t:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->v:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->x:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->y:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->z:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->A:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->B:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->C:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->F:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->D:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->E:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->w:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->q:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->G:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
