.class public final Lcom/coloros/translate/ui/dialoguetranslation/k0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/k0;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/dialoguetranslation/k0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/k0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/k0$b;->a:Lcom/coloros/translate/ui/dialoguetranslation/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    const-string p0, "sensor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    const-string v0, "DoubleScreenManager"

    const-string v1, "event"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/k0$b;->a:Lcom/coloros/translate/ui/dialoguetranslation/k0;

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->c(Lcom/coloros/translate/ui/dialoguetranslation/k0;)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "onSensorChanged isHoverMode:"

    const/16 v3, 0x96

    const/16 v4, 0x2d

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_2

    :try_start_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v6

    float-to-int p1, p1

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->d(Lcom/coloros/translate/ui/dialoguetranslation/k0;I)V

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->a(Lcom/coloros/translate/ui/dialoguetranslation/k0;)I

    move-result p1

    if-gt v4, p1, :cond_0

    if-ge p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->e(Lcom/coloros/translate/ui/dialoguetranslation/k0;Ljava/lang/Boolean;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->c(Lcom/coloros/translate/ui/dialoguetranslation/k0;)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->b(Lcom/coloros/translate/ui/dialoguetranslation/k0;)Lw8/p;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->c(Lcom/coloros/translate/ui/dialoguetranslation/k0;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, v1}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->a(Lcom/coloros/translate/ui/dialoguetranslation/k0;)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v7, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v7

    if-lez v1, :cond_4

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v6

    float-to-int p1, p1

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->d(Lcom/coloros/translate/ui/dialoguetranslation/k0;I)V

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->a(Lcom/coloros/translate/ui/dialoguetranslation/k0;)I

    move-result p1

    if-gt v4, p1, :cond_3

    if-ge p1, v3, :cond_3

    move v6, v5

    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->c(Lcom/coloros/translate/ui/dialoguetranslation/k0;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->c(Lcom/coloros/translate/ui/dialoguetranslation/k0;)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->c(Lcom/coloros/translate/ui/dialoguetranslation/k0;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->e(Lcom/coloros/translate/ui/dialoguetranslation/k0;Ljava/lang/Boolean;)V

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->b(Lcom/coloros/translate/ui/dialoguetranslation/k0;)Lw8/p;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->c(Lcom/coloros/translate/ui/dialoguetranslation/k0;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, v1}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
