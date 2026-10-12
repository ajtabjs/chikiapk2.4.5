.class public final enum Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

.field public static final enum Deferred:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

.field public static final enum Failed:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

.field public static final enum Purchased:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

.field public static final enum Purchasing:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

.field public static final enum Refunded:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

.field public static final enum Restored:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;
    .locals 7

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    sget-object v1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Purchasing:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    sget-object v2, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Purchased:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    sget-object v3, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Failed:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    sget-object v4, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Restored:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    sget-object v5, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Deferred:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    sget-object v6, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Refunded:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    filled-new-array/range {v0 .. v6}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    const-string v1, "Purchasing"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Purchasing:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    const-string v1, "Purchased"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Purchased:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    const-string v1, "Failed"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Failed:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    const-string v1, "Restored"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Restored:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    const-string v1, "Deferred"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Deferred:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    const-string v1, "Refunded"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Refunded:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    invoke-static {}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->$values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    return-object v0
.end method
