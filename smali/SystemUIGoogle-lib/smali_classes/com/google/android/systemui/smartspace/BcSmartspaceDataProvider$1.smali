.class public final Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mViews:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mAttachListeners:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mViews:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mAttachListeners:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method
