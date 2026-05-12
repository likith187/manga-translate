.class public Lk6/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk6/n0;


# static fields
.field public static final INSTANCE:Lk6/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk6/m;

    invoke-direct {v0}, Lk6/m;-><init>()V

    sput-object v0, Lk6/m;->INSTANCE:Lk6/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/oplus/anim/parser/moshi/c;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lk6/m;->b(Lcom/oplus/anim/parser/moshi/c;F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/oplus/anim/parser/moshi/c;F)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Lk6/t;->g(Lcom/oplus/anim/parser/moshi/c;)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
