.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IAcknowledgePurchaseListener;

.field public final synthetic c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IAcknowledgePurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IAcknowledgePurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnect()V
    .locals 3

    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$700(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    new-instance v2, Lcom/voxelbusters/essentialkit/billingservices/providers/google/o;

    invoke-direct {v2, p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/o;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    return-void
.end method

.method public final onDisconnected(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IAcknowledgePurchaseListener;

    const-string v0, "Connection failed"

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IAcknowledgePurchaseListener;->onAcknowledgePurchaseFailed(Ljava/lang/String;)V

    return-void
.end method
