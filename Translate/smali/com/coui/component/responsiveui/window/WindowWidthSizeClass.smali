.class public final Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;
    }
.end annotation


# static fields
.field public static final Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

.field public static final Companion:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

.field public static final Expanded:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

.field public static final Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

.field private static final b:Z


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

    sget-object v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->INSTANCE:Lcom/coui/component/responsiveui/ResponsiveUILog;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUILog;->getLOG_DEBUG()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "WindowSizeClass"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/coui/component/responsiveui/ResponsiveUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->b:Z

    new-instance v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    const-string v1, "Compact"

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    new-instance v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    const-string v1, "Medium"

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    new-instance v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    const-string v1, "Expanded"

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDEBUG$cp()Z
    .locals 1

    sget-boolean v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->b:Z

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " window base-width"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
