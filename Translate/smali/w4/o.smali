.class public abstract Lw4/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw4/o$j0;
    }
.end annotation


# static fields
.field public static final A:Lcom/google/gson/v;

.field public static final B:Lcom/google/gson/v;

.field public static final C:Lcom/google/gson/w;

.field public static final D:Lcom/google/gson/v;

.field public static final E:Lcom/google/gson/w;

.field public static final F:Lcom/google/gson/v;

.field public static final G:Lcom/google/gson/w;

.field public static final H:Lcom/google/gson/v;

.field public static final I:Lcom/google/gson/w;

.field public static final J:Lcom/google/gson/v;

.field public static final K:Lcom/google/gson/w;

.field public static final L:Lcom/google/gson/v;

.field public static final M:Lcom/google/gson/w;

.field public static final N:Lcom/google/gson/v;

.field public static final O:Lcom/google/gson/w;

.field public static final P:Lcom/google/gson/v;

.field public static final Q:Lcom/google/gson/w;

.field public static final R:Lcom/google/gson/v;

.field public static final S:Lcom/google/gson/w;

.field public static final T:Lcom/google/gson/v;

.field public static final U:Lcom/google/gson/w;

.field public static final V:Lcom/google/gson/v;

.field public static final W:Lcom/google/gson/w;

.field public static final X:Lcom/google/gson/w;

.field public static final a:Lcom/google/gson/v;

.field public static final b:Lcom/google/gson/w;

.field public static final c:Lcom/google/gson/v;

.field public static final d:Lcom/google/gson/w;

.field public static final e:Lcom/google/gson/v;

.field public static final f:Lcom/google/gson/v;

.field public static final g:Lcom/google/gson/w;

.field public static final h:Lcom/google/gson/v;

.field public static final i:Lcom/google/gson/w;

.field public static final j:Lcom/google/gson/v;

.field public static final k:Lcom/google/gson/w;

.field public static final l:Lcom/google/gson/v;

.field public static final m:Lcom/google/gson/w;

.field public static final n:Lcom/google/gson/v;

.field public static final o:Lcom/google/gson/w;

.field public static final p:Lcom/google/gson/v;

.field public static final q:Lcom/google/gson/w;

.field public static final r:Lcom/google/gson/v;

.field public static final s:Lcom/google/gson/w;

.field public static final t:Lcom/google/gson/v;

.field public static final u:Lcom/google/gson/v;

.field public static final v:Lcom/google/gson/v;

.field public static final w:Lcom/google/gson/v;

.field public static final x:Lcom/google/gson/w;

.field public static final y:Lcom/google/gson/v;

.field public static final z:Lcom/google/gson/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw4/o$k;

    invoke-direct {v0}, Lw4/o$k;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/v;->a()Lcom/google/gson/v;

    move-result-object v0

    sput-object v0, Lw4/o;->a:Lcom/google/gson/v;

    const-class v1, Ljava/lang/Class;

    invoke-static {v1, v0}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->b:Lcom/google/gson/w;

    new-instance v0, Lw4/o$v;

    invoke-direct {v0}, Lw4/o$v;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/v;->a()Lcom/google/gson/v;

    move-result-object v0

    sput-object v0, Lw4/o;->c:Lcom/google/gson/v;

    const-class v1, Ljava/util/BitSet;

    invoke-static {v1, v0}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->d:Lcom/google/gson/w;

    new-instance v0, Lw4/o$c0;

    invoke-direct {v0}, Lw4/o$c0;-><init>()V

    sput-object v0, Lw4/o;->e:Lcom/google/gson/v;

    new-instance v1, Lw4/o$d0;

    invoke-direct {v1}, Lw4/o$d0;-><init>()V

    sput-object v1, Lw4/o;->f:Lcom/google/gson/v;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v1, v2, v0}, Lw4/o;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->g:Lcom/google/gson/w;

    new-instance v0, Lw4/o$e0;

    invoke-direct {v0}, Lw4/o$e0;-><init>()V

    sput-object v0, Lw4/o;->h:Lcom/google/gson/v;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-static {v1, v2, v0}, Lw4/o;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->i:Lcom/google/gson/w;

    new-instance v0, Lw4/o$f0;

    invoke-direct {v0}, Lw4/o$f0;-><init>()V

    sput-object v0, Lw4/o;->j:Lcom/google/gson/v;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-static {v1, v2, v0}, Lw4/o;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->k:Lcom/google/gson/w;

    new-instance v0, Lw4/o$g0;

    invoke-direct {v0}, Lw4/o$g0;-><init>()V

    sput-object v0, Lw4/o;->l:Lcom/google/gson/v;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-static {v1, v2, v0}, Lw4/o;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->m:Lcom/google/gson/w;

    new-instance v0, Lw4/o$h0;

    invoke-direct {v0}, Lw4/o$h0;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/v;->a()Lcom/google/gson/v;

    move-result-object v0

    sput-object v0, Lw4/o;->n:Lcom/google/gson/v;

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v1, v0}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->o:Lcom/google/gson/w;

    new-instance v0, Lw4/o$i0;

    invoke-direct {v0}, Lw4/o$i0;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/v;->a()Lcom/google/gson/v;

    move-result-object v0

    sput-object v0, Lw4/o;->p:Lcom/google/gson/v;

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v1, v0}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->q:Lcom/google/gson/w;

    new-instance v0, Lw4/o$a;

    invoke-direct {v0}, Lw4/o$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/v;->a()Lcom/google/gson/v;

    move-result-object v0

    sput-object v0, Lw4/o;->r:Lcom/google/gson/v;

    const-class v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-static {v1, v0}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->s:Lcom/google/gson/w;

    new-instance v0, Lw4/o$b;

    invoke-direct {v0}, Lw4/o$b;-><init>()V

    sput-object v0, Lw4/o;->t:Lcom/google/gson/v;

    new-instance v0, Lw4/o$c;

    invoke-direct {v0}, Lw4/o$c;-><init>()V

    sput-object v0, Lw4/o;->u:Lcom/google/gson/v;

    new-instance v0, Lw4/o$d;

    invoke-direct {v0}, Lw4/o$d;-><init>()V

    sput-object v0, Lw4/o;->v:Lcom/google/gson/v;

    new-instance v0, Lw4/o$e;

    invoke-direct {v0}, Lw4/o$e;-><init>()V

    sput-object v0, Lw4/o;->w:Lcom/google/gson/v;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-static {v1, v2, v0}, Lw4/o;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->x:Lcom/google/gson/w;

    new-instance v0, Lw4/o$f;

    invoke-direct {v0}, Lw4/o$f;-><init>()V

    sput-object v0, Lw4/o;->y:Lcom/google/gson/v;

    new-instance v1, Lw4/o$g;

    invoke-direct {v1}, Lw4/o$g;-><init>()V

    sput-object v1, Lw4/o;->z:Lcom/google/gson/v;

    new-instance v1, Lw4/o$h;

    invoke-direct {v1}, Lw4/o$h;-><init>()V

    sput-object v1, Lw4/o;->A:Lcom/google/gson/v;

    new-instance v1, Lw4/o$i;

    invoke-direct {v1}, Lw4/o$i;-><init>()V

    sput-object v1, Lw4/o;->B:Lcom/google/gson/v;

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->C:Lcom/google/gson/w;

    new-instance v0, Lw4/o$j;

    invoke-direct {v0}, Lw4/o$j;-><init>()V

    sput-object v0, Lw4/o;->D:Lcom/google/gson/v;

    const-class v1, Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->E:Lcom/google/gson/w;

    new-instance v0, Lw4/o$l;

    invoke-direct {v0}, Lw4/o$l;-><init>()V

    sput-object v0, Lw4/o;->F:Lcom/google/gson/v;

    const-class v1, Ljava/lang/StringBuffer;

    invoke-static {v1, v0}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->G:Lcom/google/gson/w;

    new-instance v0, Lw4/o$m;

    invoke-direct {v0}, Lw4/o$m;-><init>()V

    sput-object v0, Lw4/o;->H:Lcom/google/gson/v;

    const-class v1, Ljava/net/URL;

    invoke-static {v1, v0}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->I:Lcom/google/gson/w;

    new-instance v0, Lw4/o$n;

    invoke-direct {v0}, Lw4/o$n;-><init>()V

    sput-object v0, Lw4/o;->J:Lcom/google/gson/v;

    const-class v1, Ljava/net/URI;

    invoke-static {v1, v0}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->K:Lcom/google/gson/w;

    new-instance v0, Lw4/o$o;

    invoke-direct {v0}, Lw4/o$o;-><init>()V

    sput-object v0, Lw4/o;->L:Lcom/google/gson/v;

    const-class v1, Ljava/net/InetAddress;

    invoke-static {v1, v0}, Lw4/o;->e(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->M:Lcom/google/gson/w;

    new-instance v0, Lw4/o$p;

    invoke-direct {v0}, Lw4/o$p;-><init>()V

    sput-object v0, Lw4/o;->N:Lcom/google/gson/v;

    const-class v1, Ljava/util/UUID;

    invoke-static {v1, v0}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->O:Lcom/google/gson/w;

    new-instance v0, Lw4/o$q;

    invoke-direct {v0}, Lw4/o$q;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/v;->a()Lcom/google/gson/v;

    move-result-object v0

    sput-object v0, Lw4/o;->P:Lcom/google/gson/v;

    const-class v1, Ljava/util/Currency;

    invoke-static {v1, v0}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->Q:Lcom/google/gson/w;

    new-instance v0, Lw4/o$r;

    invoke-direct {v0}, Lw4/o$r;-><init>()V

    sput-object v0, Lw4/o;->R:Lcom/google/gson/v;

    const-class v1, Ljava/util/Calendar;

    const-class v2, Ljava/util/GregorianCalendar;

    invoke-static {v1, v2, v0}, Lw4/o;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->S:Lcom/google/gson/w;

    new-instance v0, Lw4/o$s;

    invoke-direct {v0}, Lw4/o$s;-><init>()V

    sput-object v0, Lw4/o;->T:Lcom/google/gson/v;

    const-class v1, Ljava/util/Locale;

    invoke-static {v1, v0}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->U:Lcom/google/gson/w;

    new-instance v0, Lw4/o$t;

    invoke-direct {v0}, Lw4/o$t;-><init>()V

    sput-object v0, Lw4/o;->V:Lcom/google/gson/v;

    const-class v1, Lcom/google/gson/i;

    invoke-static {v1, v0}, Lw4/o;->e(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/o;->W:Lcom/google/gson/w;

    new-instance v0, Lw4/o$u;

    invoke-direct {v0}, Lw4/o$u;-><init>()V

    sput-object v0, Lw4/o;->X:Lcom/google/gson/w;

    return-void
.end method

.method public static a(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/v;)Lcom/google/gson/w;
    .locals 1

    new-instance v0, Lw4/o$w;

    invoke-direct {v0, p0, p1}, Lw4/o$w;-><init>(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/v;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;
    .locals 1

    new-instance v0, Lw4/o$x;

    invoke-direct {v0, p0, p1}, Lw4/o$x;-><init>(Ljava/lang/Class;Lcom/google/gson/v;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;
    .locals 1

    new-instance v0, Lw4/o$y;

    invoke-direct {v0, p0, p1, p2}, Lw4/o$y;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)V

    return-object v0
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;
    .locals 1

    new-instance v0, Lw4/o$z;

    invoke-direct {v0, p0, p1, p2}, Lw4/o$z;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;
    .locals 1

    new-instance v0, Lw4/o$a0;

    invoke-direct {v0, p0, p1}, Lw4/o$a0;-><init>(Ljava/lang/Class;Lcom/google/gson/v;)V

    return-object v0
.end method
