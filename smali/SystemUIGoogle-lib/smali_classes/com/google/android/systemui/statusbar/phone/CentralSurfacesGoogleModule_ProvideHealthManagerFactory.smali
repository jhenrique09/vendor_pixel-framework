.class public abstract Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogleModule_ProvideHealthManagerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideHealthManager(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/Optional;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/power/batteryhealth/HealthManager;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method
