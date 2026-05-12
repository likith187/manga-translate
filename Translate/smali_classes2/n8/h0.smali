.class public final Ln8/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Ln8/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln8/h0;

    invoke-direct {v0}, Ln8/h0;-><init>()V

    sput-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "kotlin.Unit"

    return-object p0
.end method
