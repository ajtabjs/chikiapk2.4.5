.class public final enum Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

.field public static final enum BillingNotAvailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

.field public static final enum FeatureNotAvailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

.field public static final enum NetworkError:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

.field public static final enum OfferNotApplicable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

.field public static final enum OfferNotValid:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

.field public static final enum ProductNotAvailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

.field public static final enum ProductOwned:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

.field public static final enum QuantityNotValid:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

.field public static final enum StoreIsBusy:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

.field public static final enum StoreNotInitialized:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

.field public static final enum SystemError:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

.field public static final enum Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

.field public static final enum UserCancelled:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;
    .locals 13

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    sget-object v1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->NetworkError:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    sget-object v2, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->SystemError:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    sget-object v3, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->BillingNotAvailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    sget-object v4, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->StoreNotInitialized:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    sget-object v5, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->StoreIsBusy:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    sget-object v6, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->UserCancelled:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    sget-object v7, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->OfferNotApplicable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    sget-object v8, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->OfferNotValid:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    sget-object v9, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->QuantityNotValid:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    sget-object v10, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->ProductNotAvailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    sget-object v11, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->ProductOwned:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    sget-object v12, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->FeatureNotAvailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    filled-new-array/range {v0 .. v12}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v1, "NetworkError"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->NetworkError:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v1, "SystemError"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->SystemError:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v1, "BillingNotAvailable"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->BillingNotAvailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v1, "StoreNotInitialized"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->StoreNotInitialized:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v1, "StoreIsBusy"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->StoreIsBusy:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v1, "UserCancelled"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->UserCancelled:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v1, "OfferNotApplicable"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->OfferNotApplicable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v1, "OfferNotValid"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->OfferNotValid:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v1, "QuantityNotValid"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->QuantityNotValid:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v1, "ProductNotAvailable"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->ProductNotAvailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v1, "ProductOwned"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->ProductOwned:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v1, "FeatureNotAvailable"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->FeatureNotAvailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    invoke-static {}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->$values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    return-object v0
.end method
