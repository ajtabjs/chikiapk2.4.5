.class public final synthetic Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;


# direct methods
.method public synthetic constructor <init>(Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda0;->f$0:Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda0;->f$0:Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->lambda$fetchServerAuthCode$1(Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
