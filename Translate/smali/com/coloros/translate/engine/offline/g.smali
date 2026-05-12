.class public final enum Lcom/coloros/translate/engine/offline/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/coloros/translate/engine/offline/g;

.field private static final ADAPTER_LANGUAGE_CODE_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALL_LANGUAGE_CODE_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CE:Lcom/coloros/translate/engine/offline/g;

.field public static final enum CF:Lcom/coloros/translate/engine/offline/g;

.field public static final enum CG:Lcom/coloros/translate/engine/offline/g;

.field public static final enum CI:Lcom/coloros/translate/engine/offline/g;

.field public static final enum CJ:Lcom/coloros/translate/engine/offline/g;

.field public static final enum CK:Lcom/coloros/translate/engine/offline/g;

.field public static final enum CS:Lcom/coloros/translate/engine/offline/g;

.field public static final enum CV:Lcom/coloros/translate/engine/offline/g;

.field public static final enum EH:Lcom/coloros/translate/engine/offline/g;

.field public static final enum EI:Lcom/coloros/translate/engine/offline/g;

.field public static final enum ES:Lcom/coloros/translate/engine/offline/g;

.field public static final enum ET:Lcom/coloros/translate/engine/offline/g;

.field public static final enum EV:Lcom/coloros/translate/engine/offline/g;

.field private static final TAG:Ljava/lang/String; = "LanguagePackage"


# instance fields
.field private final mBusiness:Ljava/lang/String;

.field private final mDefaultSize:J

.field private final mModel1:Ljava/lang/String;

.field private final mModel2:Ljava/lang/String;

.field private final mResId:I


# direct methods
.method private static synthetic $values()[Lcom/coloros/translate/engine/offline/g;
    .locals 13

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CE:Lcom/coloros/translate/engine/offline/g;

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CJ:Lcom/coloros/translate/engine/offline/g;

    sget-object v2, Lcom/coloros/translate/engine/offline/g;->CK:Lcom/coloros/translate/engine/offline/g;

    sget-object v3, Lcom/coloros/translate/engine/offline/g;->CI:Lcom/coloros/translate/engine/offline/g;

    sget-object v4, Lcom/coloros/translate/engine/offline/g;->CF:Lcom/coloros/translate/engine/offline/g;

    sget-object v5, Lcom/coloros/translate/engine/offline/g;->CG:Lcom/coloros/translate/engine/offline/g;

    sget-object v6, Lcom/coloros/translate/engine/offline/g;->CS:Lcom/coloros/translate/engine/offline/g;

    sget-object v7, Lcom/coloros/translate/engine/offline/g;->CV:Lcom/coloros/translate/engine/offline/g;

    sget-object v8, Lcom/coloros/translate/engine/offline/g;->EH:Lcom/coloros/translate/engine/offline/g;

    sget-object v9, Lcom/coloros/translate/engine/offline/g;->EV:Lcom/coloros/translate/engine/offline/g;

    sget-object v10, Lcom/coloros/translate/engine/offline/g;->ET:Lcom/coloros/translate/engine/offline/g;

    sget-object v11, Lcom/coloros/translate/engine/offline/g;->ES:Lcom/coloros/translate/engine/offline/g;

    sget-object v12, Lcom/coloros/translate/engine/offline/g;->EI:Lcom/coloros/translate/engine/offline/g;

    filled-new-array/range {v0 .. v12}, [Lcom/coloros/translate/engine/offline/g;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 19

    new-instance v9, Lcom/coloros/translate/engine/offline/g;

    sget v6, Lcom/coloros/translate/engine/offline/R$string;->translate_between_chinese_and_english_os15:I

    const-string v7, "zhen"

    const-string v8, "enzh"

    const-string v1, "CE"

    const/4 v2, 0x0

    const-string v3, "apps_translate_res_ce"

    const-wide/32 v4, 0x2ee3c00

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/coloros/translate/engine/offline/g;-><init>(Ljava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/coloros/translate/engine/offline/g;->CE:Lcom/coloros/translate/engine/offline/g;

    new-instance v0, Lcom/coloros/translate/engine/offline/g;

    sget v16, Lcom/coloros/translate/engine/offline/R$string;->translate_between_chinese_and_japan_os15:I

    const-string v17, "zhja"

    const-string v18, "jazh"

    const-string v11, "CJ"

    const/4 v12, 0x1

    const-string v13, "apps_translate_res_cj"

    const-wide/32 v14, 0x3c56400

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/coloros/translate/engine/offline/g;-><init>(Ljava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/translate/engine/offline/g;->CJ:Lcom/coloros/translate/engine/offline/g;

    new-instance v0, Lcom/coloros/translate/engine/offline/g;

    sget v7, Lcom/coloros/translate/engine/offline/R$string;->translate_between_chinese_and_korean_os15:I

    const-string v8, "zhko"

    const-string v9, "kozh"

    const-string v2, "CK"

    const/4 v3, 0x2

    const-string v4, "apps_translate_res_ck"

    const-wide/32 v5, 0x51d6000

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/coloros/translate/engine/offline/g;-><init>(Ljava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/translate/engine/offline/g;->CK:Lcom/coloros/translate/engine/offline/g;

    new-instance v0, Lcom/coloros/translate/engine/offline/g;

    sget v16, Lcom/coloros/translate/engine/offline/R$string;->translate_between_chinese_and_italian_os15:I

    const-string v17, "zhit"

    const-string v18, "itzh"

    const-string v11, "CI"

    const/4 v12, 0x3

    const-string v13, "apps_translate_res_ci"

    const-wide/32 v14, 0xb3c25a0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/coloros/translate/engine/offline/g;-><init>(Ljava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/translate/engine/offline/g;->CI:Lcom/coloros/translate/engine/offline/g;

    new-instance v0, Lcom/coloros/translate/engine/offline/g;

    sget v7, Lcom/coloros/translate/engine/offline/R$string;->translate_between_chinese_and_french_os15:I

    const-string v8, "zhfr"

    const-string v9, "frzh"

    const-string v2, "CF"

    const/4 v3, 0x4

    const-string v4, "apps_translate_res_cf"

    const-wide/32 v5, 0x2c9d400

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/coloros/translate/engine/offline/g;-><init>(Ljava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/translate/engine/offline/g;->CF:Lcom/coloros/translate/engine/offline/g;

    new-instance v0, Lcom/coloros/translate/engine/offline/g;

    sget v16, Lcom/coloros/translate/engine/offline/R$string;->translate_between_chinese_and_german_os15:I

    const-string v17, "zhde"

    const-string v18, "dezh"

    const-string v11, "CG"

    const/4 v12, 0x5

    const-string v13, "apps_translate_res_cg"

    const-wide/32 v14, 0xb37b3ea

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/coloros/translate/engine/offline/g;-><init>(Ljava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/translate/engine/offline/g;->CG:Lcom/coloros/translate/engine/offline/g;

    new-instance v0, Lcom/coloros/translate/engine/offline/g;

    sget v7, Lcom/coloros/translate/engine/offline/R$string;->translate_between_chinese_and_spanish_os15:I

    const-string v8, "zhes"

    const-string v9, "eszh"

    const-string v2, "CS"

    const/4 v3, 0x6

    const-string v4, "apps_translate_res_cs"

    const-wide/32 v5, 0x2da0400

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/coloros/translate/engine/offline/g;-><init>(Ljava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/translate/engine/offline/g;->CS:Lcom/coloros/translate/engine/offline/g;

    new-instance v0, Lcom/coloros/translate/engine/offline/g;

    sget v16, Lcom/coloros/translate/engine/offline/R$string;->translate_between_chinese_and_vietnam_os15:I

    const-string v17, "zhvi"

    const-string v18, "vizh"

    const-string v11, "CV"

    const/4 v12, 0x7

    const-string v13, "apps_translate_res_cv"

    const-wide/32 v14, 0x2e61000

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/coloros/translate/engine/offline/g;-><init>(Ljava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/translate/engine/offline/g;->CV:Lcom/coloros/translate/engine/offline/g;

    new-instance v0, Lcom/coloros/translate/engine/offline/g;

    sget v7, Lcom/coloros/translate/engine/offline/R$string;->translate_between_english_and_indian_os15:I

    const-string v8, "enhi"

    const-string v9, "hien"

    const-string v2, "EH"

    const/16 v3, 0x8

    const-string v4, "apps_translate_res_eh"

    const-wide/32 v5, 0x2e96c00

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/coloros/translate/engine/offline/g;-><init>(Ljava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/translate/engine/offline/g;->EH:Lcom/coloros/translate/engine/offline/g;

    new-instance v0, Lcom/coloros/translate/engine/offline/g;

    sget v16, Lcom/coloros/translate/engine/offline/R$string;->translate_between_english_and_vietnam_os15:I

    const-string v17, "envi"

    const-string v18, "vien"

    const-string v11, "EV"

    const/16 v12, 0x9

    const-string v13, "apps_translate_res_ev"

    const-wide/32 v14, 0x2e96c00

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/coloros/translate/engine/offline/g;-><init>(Ljava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/translate/engine/offline/g;->EV:Lcom/coloros/translate/engine/offline/g;

    new-instance v0, Lcom/coloros/translate/engine/offline/g;

    sget v7, Lcom/coloros/translate/engine/offline/R$string;->translate_between_english_and_thai_os15:I

    const-string v8, "enth"

    const-string v9, "then"

    const-string v2, "ET"

    const/16 v3, 0xa

    const-string v4, "apps_translate_res_et"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/coloros/translate/engine/offline/g;-><init>(Ljava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/translate/engine/offline/g;->ET:Lcom/coloros/translate/engine/offline/g;

    new-instance v0, Lcom/coloros/translate/engine/offline/g;

    sget v16, Lcom/coloros/translate/engine/offline/R$string;->translate_between_english_and_spanish_os15:I

    const-string v17, "enes"

    const-string v18, "esen"

    const-string v11, "ES"

    const/16 v12, 0xb

    const-string v13, "apps_translate_res_es"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/coloros/translate/engine/offline/g;-><init>(Ljava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/translate/engine/offline/g;->ES:Lcom/coloros/translate/engine/offline/g;

    new-instance v0, Lcom/coloros/translate/engine/offline/g;

    sget v7, Lcom/coloros/translate/engine/offline/R$string;->translate_between_english_and_indonesian_os15:I

    const-string v8, "enid"

    const-string v9, "iden"

    const-string v2, "EI"

    const/16 v3, 0xc

    const-string v4, "apps_translate_res_ei"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/coloros/translate/engine/offline/g;-><init>(Ljava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/translate/engine/offline/g;->EI:Lcom/coloros/translate/engine/offline/g;

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->$values()[Lcom/coloros/translate/engine/offline/g;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/engine/offline/g;->$VALUES:[Lcom/coloros/translate/engine/offline/g;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/offline/g;->ADAPTER_LANGUAGE_CODE_LIST:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/offline/g;->ALL_LANGUAGE_CODE_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    iput-wide p4, p0, Lcom/coloros/translate/engine/offline/g;->mDefaultSize:J

    iput p6, p0, Lcom/coloros/translate/engine/offline/g;->mResId:I

    iput-object p7, p0, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    iput-object p8, p0, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    return-void
.end method

.method public static coverToBusinessIdList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onlineConfigList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LanguagePackage"

    invoke-static {v2, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CE:Lcom/coloros/translate/engine/offline/g;

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CJ:Lcom/coloros/translate/engine/offline/g;

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CK:Lcom/coloros/translate/engine/offline/g;

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CF:Lcom/coloros/translate/engine/offline/g;

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CS:Lcom/coloros/translate/engine/offline/g;

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CV:Lcom/coloros/translate/engine/offline/g;

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CI:Lcom/coloros/translate/engine/offline/g;

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CG:Lcom/coloros/translate/engine/offline/g;

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    sget-object v1, Lcom/coloros/translate/engine/offline/g;->EH:Lcom/coloros/translate/engine/offline/g;

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    sget-object v1, Lcom/coloros/translate/engine/offline/g;->EV:Lcom/coloros/translate/engine/offline/g;

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    sget-object v1, Lcom/coloros/translate/engine/offline/g;->ET:Lcom/coloros/translate/engine/offline/g;

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    sget-object v1, Lcom/coloros/translate/engine/offline/g;->ES:Lcom/coloros/translate/engine/offline/g;

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    sget-object v1, Lcom/coloros/translate/engine/offline/g;->EI:Lcom/coloros/translate/engine/offline/g;

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, v1, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    :cond_18
    iget-object p0, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    return-object v0
.end method

.method public static generateDefaultPackageList(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/translate/engine/offline/f0;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CE:Lcom/coloros/translate/engine/offline/g;

    invoke-static {p0, v1}, Lcom/coloros/translate/engine/offline/g;->generatePackage(Landroid/content/Context;Lcom/coloros/translate/engine/offline/g;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CJ:Lcom/coloros/translate/engine/offline/g;

    invoke-static {p0, v1}, Lcom/coloros/translate/engine/offline/g;->generatePackage(Landroid/content/Context;Lcom/coloros/translate/engine/offline/g;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CK:Lcom/coloros/translate/engine/offline/g;

    invoke-static {p0, v1}, Lcom/coloros/translate/engine/offline/g;->generatePackage(Landroid/content/Context;Lcom/coloros/translate/engine/offline/g;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CF:Lcom/coloros/translate/engine/offline/g;

    invoke-static {p0, v1}, Lcom/coloros/translate/engine/offline/g;->generatePackage(Landroid/content/Context;Lcom/coloros/translate/engine/offline/g;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CS:Lcom/coloros/translate/engine/offline/g;

    invoke-static {p0, v1}, Lcom/coloros/translate/engine/offline/g;->generatePackage(Landroid/content/Context;Lcom/coloros/translate/engine/offline/g;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CV:Lcom/coloros/translate/engine/offline/g;

    invoke-static {p0, v1}, Lcom/coloros/translate/engine/offline/g;->generatePackage(Landroid/content/Context;Lcom/coloros/translate/engine/offline/g;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CI:Lcom/coloros/translate/engine/offline/g;

    invoke-static {p0, v1}, Lcom/coloros/translate/engine/offline/g;->generatePackage(Landroid/content/Context;Lcom/coloros/translate/engine/offline/g;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CG:Lcom/coloros/translate/engine/offline/g;

    invoke-static {p0, v1}, Lcom/coloros/translate/engine/offline/g;->generatePackage(Landroid/content/Context;Lcom/coloros/translate/engine/offline/g;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->EH:Lcom/coloros/translate/engine/offline/g;

    invoke-static {p0, v1}, Lcom/coloros/translate/engine/offline/g;->generatePackage(Landroid/content/Context;Lcom/coloros/translate/engine/offline/g;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->EV:Lcom/coloros/translate/engine/offline/g;

    invoke-static {p0, v1}, Lcom/coloros/translate/engine/offline/g;->generatePackage(Landroid/content/Context;Lcom/coloros/translate/engine/offline/g;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->ET:Lcom/coloros/translate/engine/offline/g;

    invoke-static {p0, v1}, Lcom/coloros/translate/engine/offline/g;->generatePackage(Landroid/content/Context;Lcom/coloros/translate/engine/offline/g;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->ES:Lcom/coloros/translate/engine/offline/g;

    invoke-static {p0, v1}, Lcom/coloros/translate/engine/offline/g;->generatePackage(Landroid/content/Context;Lcom/coloros/translate/engine/offline/g;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->EI:Lcom/coloros/translate/engine/offline/g;

    invoke-static {p0, v1}, Lcom/coloros/translate/engine/offline/g;->generatePackage(Landroid/content/Context;Lcom/coloros/translate/engine/offline/g;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static generatePackage(Landroid/content/Context;Lcom/coloros/translate/engine/offline/g;)Lcom/coloros/translate/engine/offline/f0;
    .locals 8

    invoke-virtual {p1, p0}, Lcom/coloros/translate/engine/offline/g;->existsNativeFile(Landroid/content/Context;)Z

    move-result v6

    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/coloros/translate/utils/l0$a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/coloros/translate/utils/l0$a;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    new-instance p0, Lcom/coloros/translate/engine/offline/f0;

    iget-object v1, p1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p1, Lcom/coloros/translate/engine/offline/g;->mResId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/coloros/translate/engine/offline/f0;-><init>(Ljava/lang/String;ZIJZI)V

    return-object p0
.end method

.method public static getAdaptLanguageCode()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->ADAPTER_LANGUAGE_CODE_LIST:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CE:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CJ:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CK:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CI:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CF:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CG:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CS:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CV:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->EH:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->EV:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->ET:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->ES:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->EI:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static getAllLanguageCode()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->ALL_LANGUAGE_CODE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CE:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CJ:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CK:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CI:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CF:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CS:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CV:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->CG:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->EH:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->EV:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->ET:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->ES:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/engine/offline/g;->EI:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v1, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static getCELanguageCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CE:Lcom/coloros/translate/engine/offline/g;

    iget-object v0, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    return-object v0
.end method

.method public static getCFLanguageCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CF:Lcom/coloros/translate/engine/offline/g;

    iget-object v0, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    return-object v0
.end method

.method public static getCGLanguageCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CG:Lcom/coloros/translate/engine/offline/g;

    iget-object v0, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    return-object v0
.end method

.method public static getCILanguageCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CI:Lcom/coloros/translate/engine/offline/g;

    iget-object v0, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    return-object v0
.end method

.method public static getCJLanguageCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CJ:Lcom/coloros/translate/engine/offline/g;

    iget-object v0, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    return-object v0
.end method

.method public static getCKLanguageCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CK:Lcom/coloros/translate/engine/offline/g;

    iget-object v0, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    return-object v0
.end method

.method public static getCSLanguageCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CS:Lcom/coloros/translate/engine/offline/g;

    iget-object v0, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    return-object v0
.end method

.method public static getCVLanguageCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CV:Lcom/coloros/translate/engine/offline/g;

    iget-object v0, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    return-object v0
.end method

.method public static getEHLanguageCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->EH:Lcom/coloros/translate/engine/offline/g;

    iget-object v0, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    return-object v0
.end method

.method public static getEILanguageCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->EI:Lcom/coloros/translate/engine/offline/g;

    iget-object v0, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    return-object v0
.end method

.method public static getESLanguageCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->ES:Lcom/coloros/translate/engine/offline/g;

    iget-object v0, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    return-object v0
.end method

.method public static getETLanguageCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->ET:Lcom/coloros/translate/engine/offline/g;

    iget-object v0, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    return-object v0
.end method

.method public static getEVLanguageCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->EV:Lcom/coloros/translate/engine/offline/g;

    iget-object v0, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    return-object v0
.end method

.method public static getLanguagePackage(Ljava/lang/String;)Lcom/coloros/translate/engine/offline/g;
    .locals 2

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CK:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CJ:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CE:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CS:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CV:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CF:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CI:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CG:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->EH:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->EV:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->ET:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    :cond_a
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->ES:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->EI:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLanguageResIdByModel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->values()[Lcom/coloros/translate/engine/offline/g;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget p0, v4, Lcom/coloros/translate/engine/offline/g;->mResId:I

    return p0

    :cond_2
    return v2
.end method

.method public static getModelSize(Ljava/lang/String;)J
    .locals 2

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CK:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v0, v0, Lcom/coloros/translate/engine/offline/g;->mDefaultSize:J

    return-wide v0

    :cond_0
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CJ:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v0, v0, Lcom/coloros/translate/engine/offline/g;->mDefaultSize:J

    return-wide v0

    :cond_1
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CE:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v0, v0, Lcom/coloros/translate/engine/offline/g;->mDefaultSize:J

    return-wide v0

    :cond_2
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CS:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v0, v0, Lcom/coloros/translate/engine/offline/g;->mDefaultSize:J

    return-wide v0

    :cond_3
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CV:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v0, v0, Lcom/coloros/translate/engine/offline/g;->mDefaultSize:J

    return-wide v0

    :cond_4
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->EH:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v0, v0, Lcom/coloros/translate/engine/offline/g;->mDefaultSize:J

    return-wide v0

    :cond_5
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CF:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v0, v0, Lcom/coloros/translate/engine/offline/g;->mDefaultSize:J

    return-wide v0

    :cond_6
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CI:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-wide v0, v0, Lcom/coloros/translate/engine/offline/g;->mDefaultSize:J

    return-wide v0

    :cond_7
    sget-object v0, Lcom/coloros/translate/engine/offline/g;->CG:Lcom/coloros/translate/engine/offline/g;

    iget-object v1, v0, Lcom/coloros/translate/engine/offline/g;->mBusiness:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    iget-wide v0, v0, Lcom/coloros/translate/engine/offline/g;->mDefaultSize:J

    return-wide v0

    :cond_8
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/translate/engine/offline/g;
    .locals 1

    const-class v0, Lcom/coloros/translate/engine/offline/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/engine/offline/g;

    return-object p0
.end method

.method public static values()[Lcom/coloros/translate/engine/offline/g;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/g;->$VALUES:[Lcom/coloros/translate/engine/offline/g;

    invoke-virtual {v0}, [Lcom/coloros/translate/engine/offline/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/translate/engine/offline/g;

    return-object v0
.end method


# virtual methods
.method public deleteNativeFile(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/coloros/translate/engine/offline/h0;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/coloros/translate/utils/y;->b(Ljava/io/File;)Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/coloros/translate/utils/y;->b(Ljava/io/File;)Z

    :cond_1
    return-void
.end method

.method public existsNativeFile(Landroid/content/Context;)Z
    .locals 5

    invoke-static {}, Lcom/coloros/translate/engine/offline/h0;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/g;->mModel1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "existsNativeFile false:"

    const-string v4, "LanguagePackage"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/g;->mModel2:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
