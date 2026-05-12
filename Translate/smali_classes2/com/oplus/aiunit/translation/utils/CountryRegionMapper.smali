.class public final Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/utils/CountryRegionMapper$Region;
    }
.end annotation


# static fields
.field private static final DEFAULT_CN_COUNTRIES:[Ljava/lang/String;

.field private static final DEFAULT_EU_COUNTRIES:[Ljava/lang/String;

.field private static final DEFAULT_IN_COUNTRIES:[Ljava/lang/String;

.field private static final DEFAULT_NA_COUNTRIES:[Ljava/lang/String;

.field private static final DEFAULT_SG_COUNTRIES:[Ljava/lang/String;

.field public static final INSTANCE:Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;

.field private static final MAPPING_FILE_NAME:Ljava/lang/String; = "country_region_mapping.json"

.field private static latestCnCountries:[Ljava/lang/String;

.field private static latestEuCountries:[Ljava/lang/String;

.field private static latestInCountries:[Ljava/lang/String;

.field private static latestNaCountries:[Ljava/lang/String;

.field private static latestSgCountries:[Ljava/lang/String;

.field private static savedContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 161

    new-instance v0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->INSTANCE:Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;

    const-string v159, "ZM"

    const-string v160, "ZW"

    const-string v1, "AD"

    const-string v2, "AE"

    const-string v3, "AF"

    const-string v4, "AL"

    const-string v5, "AM"

    const-string v6, "AO"

    const-string v7, "APC"

    const-string v8, "AR"

    const-string v9, "AU"

    const-string v10, "AW"

    const-string v11, "AZ"

    const-string v12, "BB"

    const-string v13, "BD"

    const-string v14, "BF"

    const-string v15, "BH"

    const-string v16, "BI"

    const-string v17, "BJ"

    const-string v18, "BM"

    const-string v19, "BN"

    const-string v20, "BO"

    const-string v21, "BR"

    const-string v22, "BS"

    const-string v23, "BT"

    const-string v24, "BW"

    const-string v25, "BY"

    const-string v26, "BZ"

    const-string v27, "CA"

    const-string v28, "CF"

    const-string v29, "CG"

    const-string v30, "CI"

    const-string v31, "CK"

    const-string v32, "CL"

    const-string v33, "CM"

    const-string v34, "CO"

    const-string v35, "CR"

    const-string v36, "CU"

    const-string v37, "CV"

    const-string v38, "DJ"

    const-string v39, "DM"

    const-string v40, "DZ"

    const-string v41, "EC"

    const-string v42, "EG"

    const-string v43, "EH"

    const-string v44, "ER"

    const-string v45, "ET"

    const-string v46, "FJ"

    const-string v47, "FM"

    const-string v48, "GA"

    const-string v49, "GD"

    const-string v50, "GE"

    const-string v51, "GH"

    const-string v52, "GM"

    const-string v53, "GN"

    const-string v54, "GQ"

    const-string v55, "GT"

    const-string v56, "GW"

    const-string v57, "GY"

    const-string v58, "HK"

    const-string v59, "HN"

    const-string v60, "HT"

    const-string v61, "ID"

    const-string v62, "IL"

    const-string v63, "IQ"

    const-string v64, "IR"

    const-string v65, "JM"

    const-string v66, "JO"

    const-string v67, "JP"

    const-string v68, "KE"

    const-string v69, "KG"

    const-string v70, "KH"

    const-string v71, "KI"

    const-string v72, "KM"

    const-string v73, "KN"

    const-string v74, "KP"

    const-string v75, "KR"

    const-string v76, "KW"

    const-string v77, "KY"

    const-string v78, "KZ"

    const-string v79, "LA"

    const-string v80, "LB"

    const-string v81, "LC"

    const-string v82, "LK"

    const-string v83, "LR"

    const-string v84, "LS"

    const-string v85, "LY"

    const-string v86, "MA"

    const-string v87, "MC"

    const-string v88, "MD"

    const-string v89, "MG"

    const-string v90, "MK"

    const-string v91, "MM"

    const-string v92, "MN"

    const-string v93, "MR"

    const-string v94, "MU"

    const-string v95, "MV"

    const-string v96, "MW"

    const-string v97, "MX"

    const-string v98, "MY"

    const-string v99, "MZ"

    const-string v100, "NA"

    const-string v101, "NE"

    const-string v102, "NG"

    const-string v103, "NI"

    const-string v104, "NP"

    const-string v105, "NR"

    const-string v106, "NU"

    const-string v107, "NZ"

    const-string v108, "OM"

    const-string v109, "PA"

    const-string v110, "PE"

    const-string v111, "PG"

    const-string v112, "PH"

    const-string v113, "PK"

    const-string v114, "PR"

    const-string v115, "PS"

    const-string v116, "PW"

    const-string v117, "PY"

    const-string v118, "QA"

    const-string v119, "RU"

    const-string v120, "RW"

    const-string v121, "SA"

    const-string v122, "SB"

    const-string v123, "SC"

    const-string v124, "SD"

    const-string v125, "SG"

    const-string v126, "SL"

    const-string v127, "SM"

    const-string v128, "SN"

    const-string v129, "SO"

    const-string v130, "SR"

    const-string v131, "SS"

    const-string v132, "ST"

    const-string v133, "SV"

    const-string v134, "SY"

    const-string v135, "SZ"

    const-string v136, "TD"

    const-string v137, "TG"

    const-string v138, "TH"

    const-string v139, "TJ"

    const-string v140, "TL"

    const-string v141, "TM"

    const-string v142, "TN"

    const-string v143, "TO"

    const-string v144, "TT"

    const-string v145, "TV"

    const-string v146, "TW"

    const-string v147, "TZ"

    const-string v148, "UA"

    const-string v149, "UG"

    const-string v150, "UY"

    const-string v151, "UZ"

    const-string v152, "VA"

    const-string v153, "VE"

    const-string v154, "VN"

    const-string v155, "VU"

    const-string v156, "WS"

    const-string v157, "YE"

    const-string v158, "ZA"

    filled-new-array/range {v1 .. v160}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_SG_COUNTRIES:[Ljava/lang/String;

    const-string v35, "SK"

    const-string v36, "TR"

    const-string v1, "AT"

    const-string v2, "BA"

    const-string v3, "BE"

    const-string v4, "BG"

    const-string v5, "CH"

    const-string v6, "CY"

    const-string v7, "CZ"

    const-string v8, "DE"

    const-string v9, "DK"

    const-string v10, "EE"

    const-string v11, "ES"

    const-string v12, "EUEX"

    const-string v13, "FI"

    const-string v14, "FR"

    const-string v15, "GB"

    const-string v16, "GR"

    const-string v17, "HR"

    const-string v18, "HU"

    const-string v19, "IE"

    const-string v20, "IS"

    const-string v21, "IT"

    const-string v22, "LI"

    const-string v23, "LT"

    const-string v24, "LU"

    const-string v25, "LV"

    const-string v26, "MT"

    const-string v27, "NL"

    const-string v28, "NO"

    const-string v29, "PL"

    const-string v30, "PT"

    const-string v31, "RO"

    const-string v32, "RS"

    const-string v33, "SE"

    const-string v34, "SI"

    filled-new-array/range {v1 .. v36}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_EU_COUNTRIES:[Ljava/lang/String;

    const-string v0, "IN"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_IN_COUNTRIES:[Ljava/lang/String;

    const-string v0, "CN"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_CN_COUNTRIES:[Ljava/lang/String;

    const-string v0, "US"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_NA_COUNTRIES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createMappingFile(Ljava/io/File;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, Lcom/google/gson/l;

    invoke-direct {p0}, Lcom/google/gson/l;-><init>()V

    const-string v0, "cn"

    sget-object v1, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_CN_COUNTRIES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/l;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "in"

    sget-object v1, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_IN_COUNTRIES:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/l;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "us"

    sget-object v1, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_NA_COUNTRIES:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/l;->n(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    const-string v1, "sg"

    sget-object v2, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_SG_COUNTRIES:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/gson/d;->B(Ljava/lang/Object;)Lcom/google/gson/i;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/gson/l;->m(Ljava/lang/String;Lcom/google/gson/i;)V

    const-string v1, "eu"

    sget-object v2, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_EU_COUNTRIES:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/gson/d;->B(Ljava/lang/Object;)Lcom/google/gson/i;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/gson/l;->m(Ljava/lang/String;Lcom/google/gson/i;)V

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/d;->y(Lcom/google/gson/i;Ljava/lang/Appendable;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    :try_start_2
    invoke-static {v1, p0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {v1, p0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private final loadDefaultCountries()V
    .locals 0

    sget-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_SG_COUNTRIES:[Ljava/lang/String;

    sput-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->latestSgCountries:[Ljava/lang/String;

    sget-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_EU_COUNTRIES:[Ljava/lang/String;

    sput-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->latestEuCountries:[Ljava/lang/String;

    sget-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_IN_COUNTRIES:[Ljava/lang/String;

    sput-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->latestInCountries:[Ljava/lang/String;

    sget-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_CN_COUNTRIES:[Ljava/lang/String;

    sput-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->latestCnCountries:[Ljava/lang/String;

    sget-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_NA_COUNTRIES:[Ljava/lang/String;

    sput-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->latestNaCountries:[Ljava/lang/String;

    return-void
.end method

.method private final loadFromFile(Ljava/io/File;)V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-class p1, Lcom/google/gson/l;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/d;->k(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/l;

    const-string v0, "cn"

    invoke-virtual {p1, v0}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/gson/i;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->latestCnCountries:[Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    const-string v0, "in"

    invoke-virtual {p1, v0}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/gson/i;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->latestInCountries:[Ljava/lang/String;

    :cond_1
    const-string v0, "us"

    invoke-virtual {p1, v0}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/gson/i;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->latestNaCountries:[Ljava/lang/String;

    :cond_2
    const-string v0, "sg"

    invoke-virtual {p1, v0}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/gson/i;->i()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/google/gson/i;->d()Lcom/google/gson/f;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/i;

    invoke-virtual {v5}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->latestSgCountries:[Ljava/lang/String;

    :cond_4
    const-string v0, "eu"

    invoke-virtual {p1, v0}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/gson/i;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/gson/i;->d()Lcom/google/gson/f;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/i;

    invoke-virtual {v3}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    sput-object p1, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->latestEuCountries:[Ljava/lang/String;

    :cond_6
    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    const/4 p1, 0x0

    :try_start_2
    invoke-static {v1, p1}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :goto_3
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v1, p1}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->loadDefaultCountries()V

    :goto_5
    return-void
.end method

.method private final validateJsonFormat(Lcom/google/gson/l;)Z
    .locals 7

    const-string p0, "cn"

    invoke-virtual {p1, p0}, Lcom/google/gson/l;->r(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/i;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const-string v0, "in"

    invoke-virtual {p1, v0}, Lcom/google/gson/l;->r(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/i;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "us"

    invoke-virtual {p1, v3}, Lcom/google/gson/l;->r(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v3}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/i;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    const-string v4, "sg"

    invoke-virtual {p1, v4}, Lcom/google/gson/l;->r(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v4}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/i;->i()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    const-string v5, "eu"

    invoke-virtual {p1, v5}, Lcom/google/gson/l;->r(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1, v5}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/i;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_4

    :cond_4
    move p1, v1

    :goto_4
    if-eqz p0, :cond_5

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method


# virtual methods
.method public final getAllRegionCountryMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "sg"

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->getCountriesByRegion(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v0

    const-string v1, "eu"

    invoke-virtual {p0, v1}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->getCountriesByRegion(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v1

    const-string v2, "in"

    invoke-virtual {p0, v2}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->getCountriesByRegion(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v2

    const-string v3, "cn"

    invoke-virtual {p0, v3}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->getCountriesByRegion(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v3

    const-string v4, "us"

    invoke-virtual {p0, v4}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->getCountriesByRegion(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ln8/q;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/j0;->k([Ln8/q;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getCountriesByRegion(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string p0, "region"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/16 v0, 0xc6b

    if-eq p0, v0, :cond_8

    const/16 v0, 0xcb0

    if-eq p0, v0, :cond_6

    const/16 v0, 0xd25

    if-eq p0, v0, :cond_4

    const/16 v0, 0xe54

    if-eq p0, v0, :cond_2

    const/16 v0, 0xe9e

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "us"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->latestNaCountries:[Ljava/lang/String;

    if-nez p0, :cond_a

    sget-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_NA_COUNTRIES:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p0, "sg"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->latestSgCountries:[Ljava/lang/String;

    if-nez p0, :cond_a

    sget-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_SG_COUNTRIES:[Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string p0, "in"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->latestInCountries:[Ljava/lang/String;

    if-nez p0, :cond_a

    sget-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_IN_COUNTRIES:[Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string p0, "eu"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    sget-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->latestEuCountries:[Ljava/lang/String;

    if-nez p0, :cond_a

    sget-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_EU_COUNTRIES:[Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string p0, "cn"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    goto :goto_1

    :cond_9
    sget-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->latestCnCountries:[Ljava/lang/String;

    if-nez p0, :cond_a

    sget-object p0, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->DEFAULT_CN_COUNTRIES:[Ljava/lang/String;

    :cond_a
    :goto_1
    return-object p0
.end method

.method public final getRegionByCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "countryCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sg"

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->getCountriesByRegion(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/collections/i;->y([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "eu"

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->getCountriesByRegion(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/collections/i;->y([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "in"

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->getCountriesByRegion(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/collections/i;->y([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "cn"

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->getCountriesByRegion(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/collections/i;->y([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "us"

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->getCountriesByRegion(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/collections/i;->y([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final initialize(Landroid/content/Context;)V
    .locals 3

    const-string v0, "country_region_mapping.json"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->savedContext:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v2}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->loadFromFile(Ljava/io/File;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->createMappingFile(Ljava/io/File;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->loadDefaultCountries()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->loadDefaultCountries()V

    :goto_1
    return-void
.end method

.method public final updateFromFile(Ljava/lang/String;)V
    .locals 6

    const-string v0, "country_region_mapping.json"

    const-string v1, "sourceJsonFilePath"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->savedContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/google/gson/d;

    invoke-direct {p1}, Lcom/google/gson/d;-><init>()V

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-class v2, Lcom/google/gson/l;

    invoke-virtual {p1, v3, v2}, Lcom/google/gson/d;->k(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "fromJson(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v4, 0x0

    :try_start_2
    invoke-static {v3, v4}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v3, v2

    check-cast v3, Lcom/google/gson/l;

    invoke-direct {p0, v3}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->validateJsonFormat(Lcom/google/gson/l;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v3, :cond_2

    return-void

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    :try_start_4
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_0
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    check-cast v2, Lcom/google/gson/i;

    invoke-virtual {p1, v2, v0}, Lcom/google/gson/d;->y(Lcom/google/gson/i;Ljava/lang/Appendable;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {v0, v4}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-direct {p0, v5}, Lcom/oplus/aiunit/translation/utils/CountryRegionMapper;->loadFromFile(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_9
    invoke-static {v0, p0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    return-void

    :catchall_2
    move-exception p0

    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_b
    invoke-static {v3, p0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method
