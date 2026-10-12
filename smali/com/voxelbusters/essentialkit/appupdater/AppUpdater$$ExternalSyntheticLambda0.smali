.class public final synthetic Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/voxelbusters/essentialkit/appupdater/IOnComplete;


# direct methods
.method public synthetic constructor <init>(Lcom/voxelbusters/essentialkit/appupdater/IOnComplete;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda0;->f$0:Lcom/voxelbusters/essentialkit/appupdater/IOnComplete;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater$$ExternalSyntheticLambda0;->f$0:Lcom/voxelbusters/essentialkit/appupdater/IOnComplete;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdater;->lambda$requestUpdateInfoInternal$0(Lcom/voxelbusters/essentialkit/appupdater/IOnComplete;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
