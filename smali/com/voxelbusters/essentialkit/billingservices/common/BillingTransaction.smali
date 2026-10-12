.class public Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    }
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private environment:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

.field private errorCode:I

.field private errorDescription:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private productIdentifier:Ljava/lang/String;

.field private productType:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

.field private purchaseTag:Ljava/lang/String;

.field private purchasedQuantity:I

.field private rawData:Ljava/lang/String;

.field private receipt:Ljava/lang/String;

.field private requestedQuantity:I

.field private revocationInfo:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;

.field private state:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

.field private subscriptionStatus:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;

.field private verificationState:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->id:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1002(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->productType:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->productIdentifier:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1102(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;I)I
    .locals 0

    iput p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->errorCode:I

    return p1
.end method

.method public static synthetic access$1202(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->errorDescription:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1302(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->revocationInfo:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;

    return-object p1
.end method

.method public static synthetic access$1402(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->subscriptionStatus:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;

    return-object p1
.end method

.method public static synthetic access$1502(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->rawData:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;I)I
    .locals 0

    iput p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->purchasedQuantity:I

    return p1
.end method

.method public static synthetic access$302(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;I)I
    .locals 0

    iput p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->requestedQuantity:I

    return p1
.end method

.method public static synthetic access$402(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->purchaseTag:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->date:Ljava/util/Date;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->state:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->verificationState:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    return-object p1
.end method

.method public static synthetic access$802(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->receipt:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$902(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->environment:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    return-object p1
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getEnvironment()Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->environment:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->errorCode:I

    return v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->productIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->productType:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    return-object v0
.end method

.method public getPurchaseTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->purchaseTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchasedQuantity()I
    .locals 1

    iget v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->purchasedQuantity:I

    return v0
.end method

.method public getRawData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->rawData:Ljava/lang/String;

    return-object v0
.end method

.method public getReceipt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->receipt:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedQuantity()I
    .locals 1

    iget v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->requestedQuantity:I

    return v0
.end method

.method public getRevocationInfo()Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->revocationInfo:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;

    return-object v0
.end method

.method public getState()Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->state:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    return-object v0
.end method

.method public getSubscriptionStatus()Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->subscriptionStatus:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;

    return-object v0
.end method

.method public getVerificationState()Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->verificationState:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    return-object v0
.end method

.method public setVerificationState(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->verificationState:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BillingTransaction{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', productIdentifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->productIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', purchasedQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->purchasedQuantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestedQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->requestedQuantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->purchaseTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->state:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verificationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->verificationState:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receipt=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->receipt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', environment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->environment:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->productType:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorDescription=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->errorDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', revocationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->revocationInfo:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriptionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->subscriptionStatus:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->rawData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
