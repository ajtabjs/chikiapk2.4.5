.class public final Lcom/voxelbusters/essentialkit/socialauth/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/socialauth/c;->b:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/socialauth/c;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/socialauth/c;->b:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->access$300(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/socialauth/c;->a:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const-string v1, "Unknown error"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/voxelbusters/essentialkit/socialauth/b;

    invoke-direct {v1, p0}, Lcom/voxelbusters/essentialkit/socialauth/b;-><init>(Lcom/voxelbusters/essentialkit/socialauth/c;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
