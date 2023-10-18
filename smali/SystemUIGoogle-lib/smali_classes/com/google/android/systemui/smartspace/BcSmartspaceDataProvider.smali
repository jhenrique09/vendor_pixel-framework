.class public final Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAttachListeners:Ljava/util/Set;

.field public mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

.field public final mSmartspaceTargetListeners:Ljava/util/Set;

.field public final mSmartspaceTargets:Ljava/util/List;

.field public final mStateChangeListener:Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;

.field public final mViews:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "BcSmartspaceDataPlugin"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mSmartspaceTargetListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mSmartspaceTargets:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mViews:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mAttachListeners:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mStateChangeListener:Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;

    return-void
.end method


# virtual methods
.method public final addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mAttachListeners:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mViews:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getView(Landroid/view/ViewGroup;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d026d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mStateChangeListener:Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$1;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    check-cast p1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    return-object p1
.end method

.method public final notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :cond_0
    return-void
.end method

.method public final onTargetsAvailable(Ljava/util/List;)V
    .locals 4

    sget-boolean v0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onTargetsAvailable called. Callers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BcSmartspaceDataPlugin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "    targets.size() = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "    targets = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mSmartspaceTargets:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mSmartspaceTargetListeners:Ljava/util/Set;

    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mSmartspaceTargetListeners:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;->onSmartspaceTargetsUpdated(Ljava/util/List;)V

    return-void
.end method

.method public final registerSmartspaceEventNotifier(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mEventNotifier:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;

    return-void
.end method

.method public final unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;->mSmartspaceTargetListeners:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
