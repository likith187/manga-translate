.class Landroidx/preference/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/preference/Preference;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/h$c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getLayoutResource()I

    move-result v0

    iput v0, p0, Landroidx/preference/h$c;->a:I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getWidgetLayoutResource()I

    move-result p1

    iput p1, p0, Landroidx/preference/h$c;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/preference/h$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/preference/h$c;

    iget v0, p0, Landroidx/preference/h$c;->a:I

    iget v2, p1, Landroidx/preference/h$c;->a:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/preference/h$c;->b:I

    iget v2, p1, Landroidx/preference/h$c;->b:I

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Landroidx/preference/h$c;->c:Ljava/lang/String;

    iget-object p1, p1, Landroidx/preference/h$c;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Landroidx/preference/h$c;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/preference/h$c;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/preference/h$c;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
