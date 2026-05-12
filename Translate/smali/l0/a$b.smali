.class public final Ll0/a$b;
.super Ll0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final INSTANCE:Ll0/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll0/a$b;

    invoke-direct {v0}, Ll0/a$b;-><init>()V

    sput-object v0, Ll0/a$b;->INSTANCE:Ll0/a$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll0/a$c;)Ljava/lang/Object;
    .locals 0

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
