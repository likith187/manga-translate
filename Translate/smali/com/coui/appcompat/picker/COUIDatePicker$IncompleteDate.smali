.class Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUIDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IncompleteDate"
.end annotation


# instance fields
.field private mDate:Ljava/util/Calendar;

.field private mIsIncomplete:Z


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mIsIncomplete:Z

    return p0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    return-object p0
.end method


# virtual methods
.method public after(Ljava/util/Calendar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mIsIncomplete:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public before(Ljava/util/Calendar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mIsIncomplete:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method clampDate(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mIsIncomplete:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, v3, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(II)V

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, v2, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(II)V

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(II)V

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(II)V

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method clampDay(I)I
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    if-le p1, p0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mIsIncomplete:Z

    return-void
.end method

.method public get(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mIsIncomplete:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/high16 p0, -0x80000000

    return p0

    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method getActualMaximum(I)I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    return p0
.end method

.method getActualMinimum(I)I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p0

    return p0
.end method

.method public getTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getTimeInMillis()J
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public set(II)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/high16 v3, -0x80000000

    if-eq p2, v3, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mIsIncomplete:Z

    .line 2
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 3
    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 4
    iget-object v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 5
    iget-object v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 6
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p2, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 7
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->clampDay(I)I

    move-result p0

    invoke-virtual {p1, v1, p0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mIsIncomplete:Z

    .line 9
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 10
    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 11
    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 12
    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    const/16 v4, 0x7e4

    invoke-virtual {v3, p1, v4}, Ljava/util/Calendar;->set(II)V

    .line 13
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 14
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->clampDay(I)I

    move-result p0

    invoke-virtual {p1, v1, p0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 15
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 16
    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 17
    iget-object v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 18
    iget-object v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 19
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 20
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->clampDay(I)I

    move-result p0

    invoke-virtual {p1, v1, p0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->clampDay(I)I

    move-result p0

    invoke-virtual {p1, v1, p0}, Ljava/util/Calendar;->set(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public set(III)V
    .locals 1

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(II)V

    const/4 p1, 0x2

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(II)V

    const/4 p1, 0x5

    .line 24
    invoke-virtual {p0, p1, p3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(II)V

    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mIsIncomplete:Z

    return-void
.end method

.method public setWith(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean p1, p1, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mIsIncomplete:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->mIsIncomplete:Z

    return-void
.end method
