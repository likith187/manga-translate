.class final enum Landroidx/constraintlayout/motion/widget/MotionLayout$k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "k"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/motion/widget/MotionLayout$k;

.field public static final enum FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

.field public static final enum MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

.field public static final enum SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

.field public static final enum UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$k;


# direct methods
.method private static synthetic $values()[Landroidx/constraintlayout/motion/widget/MotionLayout$k;
    .locals 4

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    const-string v1, "SETUP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    const-string v1, "MOVING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    const-string v1, "FINISHED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    invoke-static {}, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->$values()[Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->$VALUES:[Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/MotionLayout$k;
    .locals 1

    const-class v0, Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/motion/widget/MotionLayout$k;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$k;->$VALUES:[Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    invoke-virtual {v0}, [Landroidx/constraintlayout/motion/widget/MotionLayout$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/motion/widget/MotionLayout$k;

    return-object v0
.end method
