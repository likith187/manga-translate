.class public Lk6/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk6/n0;


# static fields
.field public static final INSTANCE:Lk6/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk6/a0;

    invoke-direct {v0}, Lk6/a0;-><init>()V

    sput-object v0, Lk6/a0;->INSTANCE:Lk6/a0;

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

    invoke-virtual {p0, p1, p2}, Lk6/a0;->b(Lcom/oplus/anim/parser/moshi/c;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/oplus/anim/parser/moshi/c;F)Landroid/graphics/PointF;
    .locals 0

    invoke-static {p1, p2}, Lk6/t;->e(Lcom/oplus/anim/parser/moshi/c;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
