.class public final synthetic Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;

.field public final synthetic f$1:Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;


# direct methods
.method public synthetic constructor <init>(Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;Ljava/lang/String;Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda1;->f$0:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda1;->f$1:Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda1;->f$3:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda1;->f$0:Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda1;->f$1:Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda1;->f$3:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->lambda$triggerWithAlert$1$com-voxelbusters-essentialkit-appupdater-AppUpdater(Lcom/voxelbusters/essentialkit/appupdater/PromptUpdateOptions;Ljava/lang/String;Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;Landroid/content/DialogInterface;I)V

    return-void
.end method
