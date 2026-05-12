.class Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static INSTANCE:Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    invoke-direct {v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;-><init>()V

    sput-object v0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$Holder;->INSTANCE:Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
