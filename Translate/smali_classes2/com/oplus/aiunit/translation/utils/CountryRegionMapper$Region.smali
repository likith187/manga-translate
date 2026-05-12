.class public final Lcom/oplus/aiunit/translation/utils/CountryRegionMapper$Region;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Region"
.end annotation


# static fields
.field public static final CN:Ljava/lang/String; = "cn"

.field public static final EU:Ljava/lang/String; = "eu"

.field public static final IN:Ljava/lang/String; = "in"

.field public static final INSTANCE:Lcom/oplus/aiunit/translation/utils/CountryRegionMapper$Region;

.field public static final NA:Ljava/lang/String; = "us"

.field public static final SG:Ljava/lang/String; = "sg"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper$Region;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper$Region;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper$Region;->INSTANCE:Lcom/oplus/aiunit/translation/utils/CountryRegionMapper$Region;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
