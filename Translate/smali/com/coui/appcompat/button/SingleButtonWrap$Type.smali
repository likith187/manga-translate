.class public interface abstract annotation Lcom/coui/appcompat/button/SingleButtonWrap$Type;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/button/SingleButtonWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Type"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final DescLarge:I = 0x7

.field public static final DescMedium:I = 0x4

.field public static final Large:I = 0x0

.field public static final Medium:I = 0x1

.field public static final PanelMedium:I = 0x3

.field public static final SingleCentralLarge:I = 0x6

.field public static final Small:I = 0x2

.field public static final TextLarge:I = 0x5
