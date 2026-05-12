.class public Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final MIN_DELETE_TIME:I = 0x64

.field private static final TAG:Ljava/lang/String; = "COUIEditFastDeleteWatcher"


# instance fields
.field private mBeforeText:Landroid/text/Editable;

.field private mEdittext:Landroid/widget/EditText;

.field private mEnable:Z

.field private mFirstDeleteTime:J

.field private mIsDeleting:Z

.field private mLastDeleteTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/edittext/COUIEditText;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mEnable:Z

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mEdittext:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetAllState()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mFirstDeleteTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mIsDeleting:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mBeforeText:Landroid/text/Editable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mIsDeleting:Z

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mLastDeleteTime:J

    sub-long v5, v0, v3

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mIsDeleting:Z

    iput-wide v5, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mLastDeleteTime:J

    :cond_2
    iget-boolean v3, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mIsDeleting:Z

    const/4 v4, 0x1

    if-nez v3, :cond_3

    iput-boolean v4, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mIsDeleting:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mFirstDeleteTime:J

    :cond_3
    iget-wide v5, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mFirstDeleteTime:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0xfa0

    cmp-long v3, v5, v7

    if-gez v3, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mLastDeleteTime:J

    return-void

    :cond_4
    iget-wide v5, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mLastDeleteTime:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x64

    cmp-long v0, v0, v5

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mBeforeText:Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v1, v0, v1

    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mEnable:Z

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mBeforeText:Landroid/text/Editable;

    sub-int v1, v0, v1

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    iput-boolean v4, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mEnable:Z

    return-void

    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v1, v0, :cond_6

    move v1, v0

    :cond_6
    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mEnable:Z

    sub-int v1, v0, v1

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mLastDeleteTime:J

    iput-boolean v4, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mEnable:Z

    const-string p1, "afterTextChanged done"

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-boolean p2, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mEnable:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->mBeforeText:Landroid/text/Editable;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
