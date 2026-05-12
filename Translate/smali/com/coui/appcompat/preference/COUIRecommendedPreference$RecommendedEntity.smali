.class public Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUIRecommendedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecommendedEntity"
.end annotation


# instance fields
.field private onRecommendedClickListener:Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->title:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->onRecommendedClickListener:Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;)Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->onRecommendedClickListener:Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;

    return-object p0
.end method
