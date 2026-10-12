.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/u;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPurchaseFailed(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/u;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$000(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingTransactionStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/u;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    sget-object v1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Failed:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    invoke-static {v0, p1, p2, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$100(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/u;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$000(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingTransactionStateListener;

    move-result-object p2

    invoke-virtual {p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->build()Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingTransactionStateListener;->onFailed(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public final onPurchaseStarted(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/u;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$000(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingTransactionStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/u;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    sget-object v1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Purchasing:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    invoke-static {v0, p1, p2, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$100(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/u;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$000(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingTransactionStateListener;

    move-result-object p2

    invoke-virtual {p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->build()Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingTransactionStateListener;->onStarted(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;)V

    :cond_0
    return-void
.end method

.method public final onPurchaseUpdated(Lcom/android/billingclient/api/Purchase;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;)V
    .locals 1

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/u;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$000(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingTransactionStateListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/u;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {p2, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$200(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Lcom/android/billingclient/api/Purchase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/u;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$000(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingTransactionStateListener;

    move-result-object p2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/u;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$200(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Lcom/android/billingclient/api/Purchase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->build()Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingTransactionStateListener;->onUpdated(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;)V

    :cond_0
    return-void
.end method
