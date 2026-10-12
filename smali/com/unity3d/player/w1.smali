.class final Lcom/unity3d/player/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:Z

.field final synthetic k:Z

.field final synthetic l:Ljava/util/concurrent/Semaphore;

.field final synthetic m:Lcom/unity3d/player/UnityPlayerForActivityOrService;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;Lcom/unity3d/player/UnityPlayerForActivityOrService;Ljava/lang/String;IZZZZLjava/lang/String;IZZLjava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/w1;->m:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iput-object p2, p0, Lcom/unity3d/player/w1;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iput-object p3, p0, Lcom/unity3d/player/w1;->b:Ljava/lang/String;

    iput p4, p0, Lcom/unity3d/player/w1;->c:I

    iput-boolean p5, p0, Lcom/unity3d/player/w1;->d:Z

    iput-boolean p6, p0, Lcom/unity3d/player/w1;->e:Z

    iput-boolean p7, p0, Lcom/unity3d/player/w1;->f:Z

    iput-boolean p8, p0, Lcom/unity3d/player/w1;->g:Z

    iput-object p9, p0, Lcom/unity3d/player/w1;->h:Ljava/lang/String;

    iput p10, p0, Lcom/unity3d/player/w1;->i:I

    iput-boolean p11, p0, Lcom/unity3d/player/w1;->j:Z

    iput-boolean p12, p0, Lcom/unity3d/player/w1;->k:Z

    iput-object p13, p0, Lcom/unity3d/player/w1;->l:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const-string v0, "Exception when opening Softinput "

    :try_start_0
    iget-object v1, p0, Lcom/unity3d/player/w1;->m:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$fgetmSoftInput(Lcom/unity3d/player/UnityPlayerForActivityOrService;)Lcom/unity3d/player/W;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$mdismissSoftInput(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    :cond_0
    iget-object v1, p0, Lcom/unity3d/player/w1;->m:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {}, Lcom/unity3d/player/SoftInputProvider;->a()I

    move-result v2

    iget-object v3, p0, Lcom/unity3d/player/w1;->m:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iget-object v3, v3, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/unity3d/player/w1;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v2}, Lcom/unity3d/player/a/a;->a(I)I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    new-instance v2, Lcom/unity3d/player/g0;

    invoke-direct {v2, v3, v4}, Lcom/unity3d/player/g0;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/unity3d/player/b0;

    invoke-direct {v2, v3, v4}, Lcom/unity3d/player/b0;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    .line 0
    :goto_0
    invoke-static {v1, v2}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$fputmSoftInput(Lcom/unity3d/player/UnityPlayerForActivityOrService;Lcom/unity3d/player/W;)V

    iget-object v1, p0, Lcom/unity3d/player/w1;->m:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$fgetmSoftInput(Lcom/unity3d/player/UnityPlayerForActivityOrService;)Lcom/unity3d/player/W;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/w1;->b:Ljava/lang/String;

    iget v4, p0, Lcom/unity3d/player/w1;->c:I

    iget-boolean v5, p0, Lcom/unity3d/player/w1;->d:Z

    iget-boolean v6, p0, Lcom/unity3d/player/w1;->e:Z

    iget-boolean v7, p0, Lcom/unity3d/player/w1;->f:Z

    iget-boolean v8, p0, Lcom/unity3d/player/w1;->g:Z

    iget-object v9, p0, Lcom/unity3d/player/w1;->h:Ljava/lang/String;

    iget v10, p0, Lcom/unity3d/player/w1;->i:I

    iget-boolean v11, p0, Lcom/unity3d/player/w1;->j:Z

    iget-boolean v12, p0, Lcom/unity3d/player/w1;->k:Z

    invoke-virtual/range {v2 .. v12}, Lcom/unity3d/player/W;->a(Ljava/lang/String;IZZZZLjava/lang/String;IZZ)V

    iget-object v1, p0, Lcom/unity3d/player/w1;->m:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$fgetmSoftInput(Lcom/unity3d/player/UnityPlayerForActivityOrService;)Lcom/unity3d/player/W;

    move-result-object v1

    new-instance v2, Lcom/unity3d/player/v1;

    invoke-direct {v2, p0}, Lcom/unity3d/player/v1;-><init>(Lcom/unity3d/player/w1;)V

    iput-object v2, v1, Lcom/unity3d/player/W;->f:Lcom/unity3d/player/J;

    invoke-virtual {v1}, Lcom/unity3d/player/W;->d()V

    iget-object v1, p0, Lcom/unity3d/player/w1;->m:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$mnativeReportKeyboardConfigChanged(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/unity3d/player/D;->Log(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/unity3d/player/w1;->l:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :goto_2
    iget-object v1, p0, Lcom/unity3d/player/w1;->l:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method
