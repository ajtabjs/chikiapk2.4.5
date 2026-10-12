.class public Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;-><init>(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/b;)V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    return-void
.end method


# virtual methods
.method public build()Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->access$502(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Ljava/util/Date;)Ljava/util/Date;

    return-object p0
.end method

.method public setEnvironment(Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->access$902(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    return-object p0
.end method

.method public setError(ILjava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->access$1102(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;I)I

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    invoke-static {p1, p2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->access$1202(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setProductIdentifier(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->access$102(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setProductType(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->access$1002(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    return-object p0
.end method

.method public setPurchaseTag(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->access$402(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setPurchasedQuantity(I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->access$202(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;I)I

    return-object p0
.end method

.method public setRawData(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->access$1502(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setReceipt(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->access$802(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setRequestedQuantity(I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->access$302(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;I)I

    return-object p0
.end method

.method public setRevocationInfo(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->access$1302(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;

    return-object p0
.end method

.method public setState(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->access$602(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    return-object p0
.end method

.method public setSubscriptionStatus(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->access$1402(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;

    return-object p0
.end method

.method public setVerificationState(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->transaction:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;->access$702(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    return-object p0
.end method
