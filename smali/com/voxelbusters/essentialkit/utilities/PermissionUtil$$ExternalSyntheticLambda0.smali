.class public final synthetic Lcom/voxelbusters/essentialkit/utilities/PermissionUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;

.field public final synthetic f$3:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil$$ExternalSyntheticLambda0;->f$2:Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;

    iput-object p4, p0, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil$$ExternalSyntheticLambda0;->f$3:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil$$ExternalSyntheticLambda0;->f$2:Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil$$ExternalSyntheticLambda0;->f$3:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3}, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil;->lambda$requestPermissions$0(Ljava/util/ArrayList;Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;Landroid/app/Activity;)V

    return-void
.end method
