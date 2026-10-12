.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/w;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/w;->a:Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartProductPurchaseFailed(Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/w;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$700(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/w;->a:Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;

    invoke-interface {v0, p1, v1, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;->onPurchaseFailed(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    return-void
.end method

.method public final onStartProductPurchaseSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/w;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$700(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/w;->a:Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;

    invoke-interface {v0, p1, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;->onPurchaseStarted(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;)V

    return-void
.end method
