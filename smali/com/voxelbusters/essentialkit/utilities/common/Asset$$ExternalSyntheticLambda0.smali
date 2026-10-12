.class public final synthetic Lcom/voxelbusters/essentialkit/utilities/common/Asset$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/voxelbusters/essentialkit/utilities/common/Asset;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ICopyAssetListener;


# direct methods
.method public synthetic constructor <init>(Lcom/voxelbusters/essentialkit/utilities/common/Asset;Ljava/lang/String;Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ICopyAssetListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$$ExternalSyntheticLambda0;->f$0:Lcom/voxelbusters/essentialkit/utilities/common/Asset;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$$ExternalSyntheticLambda0;->f$3:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ICopyAssetListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$$ExternalSyntheticLambda0;->f$0:Lcom/voxelbusters/essentialkit/utilities/common/Asset;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$$ExternalSyntheticLambda0;->f$3:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ICopyAssetListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxelbusters/essentialkit/utilities/common/Asset;->lambda$copy$1$com-voxelbusters-essentialkit-utilities-common-Asset(Ljava/lang/String;Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ICopyAssetListener;)V

    return-void
.end method
