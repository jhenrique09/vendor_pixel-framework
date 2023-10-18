.class public abstract Lcom/google/android/systemui/columbus/legacy/ColumbusModule_ProvideColumbusActionsFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideColumbusActions(Ljava/util/List;Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;)Ljava/util/List;
    .locals 2

    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/systemui/columbus/legacy/actions/Action;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    iget-object p0, v0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/systemui/columbus/legacy/actions/Action;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method
