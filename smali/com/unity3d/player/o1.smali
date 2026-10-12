.class final Lcom/unity3d/player/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/res/Configuration;

.field final synthetic b:Lcom/unity3d/player/UnityPlayerForActivityOrService;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;Landroid/content/res/Configuration;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/o1;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iput-object p2, p0, Lcom/unity3d/player/o1;->a:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/o1;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iget-object v1, p0, Lcom/unity3d/player/o1;->a:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
