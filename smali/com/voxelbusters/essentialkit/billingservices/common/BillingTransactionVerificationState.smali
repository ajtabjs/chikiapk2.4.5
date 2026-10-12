.class public final enum Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

.field public static final enum Failure:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

.field public static final enum Success:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

.field public static final enum Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;
    .locals 3

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    sget-object v1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;->Success:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    sget-object v2, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;->Failure:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    filled-new-array {v0, v1, v2}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    const-string v1, "Success"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;->Success:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    const-string v1, "Failure"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;->Failure:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    invoke-static {}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;->$values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    return-object v0
.end method
