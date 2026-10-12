.class public final synthetic Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;


# direct methods
.method public synthetic constructor <init>(Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda2;->f$0:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda2;->f$0:Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;

    invoke-static {v0, p1, p2}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->lambda$triggerWithAlert$2(Lcom/voxelbusters/essentialkit/appupdater/IOnPromptUpdateComplete;Landroid/content/DialogInterface;I)V

    return-void
.end method
