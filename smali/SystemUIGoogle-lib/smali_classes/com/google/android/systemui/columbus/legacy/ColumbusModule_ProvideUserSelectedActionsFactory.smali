.class public abstract Lcom/google/android/systemui/columbus/legacy/ColumbusModule_ProvideUserSelectedActionsFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideUserSelectedActions(Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;Lcom/google/android/systemui/columbus/legacy/actions/ManageMedia;Lcom/google/android/systemui/columbus/legacy/actions/TakeScreenshot;Lcom/google/android/systemui/columbus/legacy/actions/LaunchOverview;Lcom/google/android/systemui/columbus/legacy/actions/OpenNotificationShade;Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;)Ljava/util/Map;
    .locals 7

    new-instance v0, Lkotlin/Pair;

    const-string v1, "assistant"

    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    const-string p0, "media"

    invoke-direct {v1, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    const-string p0, "screenshot"

    invoke-direct {v2, p0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    const-string p0, "overview"

    invoke-direct {v3, p0, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    const-string p0, "notifications"

    invoke-direct {v4, p0, p4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    const-string p0, "launch"

    invoke-direct {v5, p0, p5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lkotlin/Pair;

    const-string p0, "flashlight"

    invoke-direct {v6, p0, p6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    move-object p1, v1

    move-object p2, v2

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    filled-new-array/range {p0 .. p6}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
