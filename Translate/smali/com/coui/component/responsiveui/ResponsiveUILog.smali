.class public final Lcom/coui/component/responsiveui/ResponsiveUILog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coui/component/responsiveui/ResponsiveUILog;

.field private static final a:Z

.field private static final b:Z

.field private static final c:Z

.field private static final d:Z

.field private static final e:Z

.field private static final f:Z

.field private static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUILog;

    invoke-direct {v0}, Lcom/coui/component/responsiveui/ResponsiveUILog;-><init>()V

    sput-object v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->INSTANCE:Lcom/coui/component/responsiveui/ResponsiveUILog;

    const/4 v0, 0x2

    const-string v1, "COUI"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->a:Z

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sput-boolean v2, Lcom/coui/component/responsiveui/ResponsiveUILog;->b:Z

    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    sput-boolean v3, Lcom/coui/component/responsiveui/ResponsiveUILog;->c:Z

    const/4 v4, 0x5

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    sput-boolean v4, Lcom/coui/component/responsiveui/ResponsiveUILog;->d:Z

    const/4 v5, 0x6

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    sput-boolean v5, Lcom/coui/component/responsiveui/ResponsiveUILog;->e:Z

    const/4 v6, 0x7

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/coui/component/responsiveui/ResponsiveUILog;->f:Z

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->g:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLOG_ASSERT()Z
    .locals 0

    sget-boolean p0, Lcom/coui/component/responsiveui/ResponsiveUILog;->f:Z

    return p0
.end method

.method public final getLOG_DEBUG()Z
    .locals 0

    sget-boolean p0, Lcom/coui/component/responsiveui/ResponsiveUILog;->b:Z

    return p0
.end method

.method public final getLOG_ERROR()Z
    .locals 0

    sget-boolean p0, Lcom/coui/component/responsiveui/ResponsiveUILog;->e:Z

    return p0
.end method

.method public final getLOG_INFO()Z
    .locals 0

    sget-boolean p0, Lcom/coui/component/responsiveui/ResponsiveUILog;->c:Z

    return p0
.end method

.method public final getLOG_SILENT()Z
    .locals 0

    sget-boolean p0, Lcom/coui/component/responsiveui/ResponsiveUILog;->g:Z

    return p0
.end method

.method public final getLOG_VERBOSE()Z
    .locals 0

    sget-boolean p0, Lcom/coui/component/responsiveui/ResponsiveUILog;->a:Z

    return p0
.end method

.method public final getLOG_WARN()Z
    .locals 0

    sget-boolean p0, Lcom/coui/component/responsiveui/ResponsiveUILog;->d:Z

    return p0
.end method

.method public final isLoggable(Ljava/lang/String;I)Z
    .locals 0

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final logStatus()V
    .locals 1

    .line 27
    const-string v0, "COUI"

    invoke-virtual {p0, v0}, Lcom/coui/component/responsiveui/ResponsiveUILog;->logStatus(Ljava/lang/String;)V

    return-void
.end method

.method public final logStatus(Ljava/lang/String;)V
    .locals 9

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string p0, "COUI"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->a:Z

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 2
    :goto_0
    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/coui/component/responsiveui/ResponsiveUILog;->b:Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 3
    :goto_1
    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/coui/component/responsiveui/ResponsiveUILog;->c:Z

    goto :goto_2

    :cond_2
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    .line 4
    :goto_2
    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/coui/component/responsiveui/ResponsiveUILog;->d:Z

    goto :goto_3

    :cond_3
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    .line 5
    :goto_3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/coui/component/responsiveui/ResponsiveUILog;->e:Z

    goto :goto_4

    :cond_4
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    .line 6
    :goto_4
    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-boolean v1, Lcom/coui/component/responsiveui/ResponsiveUILog;->f:Z

    goto :goto_5

    :cond_5
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 7
    :goto_5
    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/coui/component/responsiveui/ResponsiveUILog;->g:Z

    goto :goto_6

    :cond_6
    if-nez v0, :cond_7

    if-nez v2, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    if-nez v5, :cond_7

    if-nez v1, :cond_7

    const/4 v6, 0x1

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    .line 8
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n            Log status for tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, "\n            VERBOSE: "

    .line 10
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string p1, "\n            DEBUG: "

    .line 12
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    const-string p1, "\n            INFO: "

    .line 14
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    const-string p1, "\n            WARN: "

    .line 16
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, "\n            ERROR: "

    .line 18
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    const-string p1, "\n            ASSERT: "

    .line 20
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    const-string p1, "\n            SILENT: "

    .line 22
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, "\n            "

    .line 24
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lkotlin/text/r;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x7

    .line 26
    invoke-static {v0, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
