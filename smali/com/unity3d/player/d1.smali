.class final Lcom/unity3d/player/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/unity3d/player/UnityPlayerForActivityOrService;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;I)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/d1;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iput p2, p0, Lcom/unity3d/player/d1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/unity3d/player/d1;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$fgetmSoftInput(Lcom/unity3d/player/UnityPlayerForActivityOrService;)Lcom/unity3d/player/W;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/unity3d/player/d1;->a:I

    iget-object v0, v0, Lcom/unity3d/player/W;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v3, 0x1

    .line 0
    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_0
    new-array v1, v2, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    :goto_0
    return-void
.end method
