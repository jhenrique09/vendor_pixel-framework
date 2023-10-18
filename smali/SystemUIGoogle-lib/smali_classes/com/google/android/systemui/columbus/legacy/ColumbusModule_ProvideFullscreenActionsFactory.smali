.class public abstract Lcom/google/android/systemui/columbus/legacy/ColumbusModule_ProvideFullscreenActionsFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideFullscreenActions(Lcom/google/android/systemui/columbus/legacy/actions/DismissTimer;Lcom/google/android/systemui/columbus/legacy/actions/SnoozeAlarm;Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;Lcom/google/android/systemui/columbus/legacy/actions/SettingsAction;)Ljava/util/List;
    .locals 0

    filled-new-array {p0, p1, p2, p3}, [Lcom/google/android/systemui/columbus/legacy/actions/Action;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method
