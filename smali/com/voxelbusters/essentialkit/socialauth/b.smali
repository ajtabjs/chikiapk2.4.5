.class public final Lcom/voxelbusters/essentialkit/socialauth/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/socialauth/c;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/socialauth/c;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/socialauth/b;->a:Lcom/voxelbusters/essentialkit/socialauth/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/socialauth/b;->a:Lcom/voxelbusters/essentialkit/socialauth/c;

    iget-object p2, p1, Lcom/voxelbusters/essentialkit/socialauth/c;->b:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/socialauth/c;->a:Ljava/lang/Exception;

    invoke-static {p2, p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->access$200(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Ljava/lang/Exception;)V

    return-void
.end method
