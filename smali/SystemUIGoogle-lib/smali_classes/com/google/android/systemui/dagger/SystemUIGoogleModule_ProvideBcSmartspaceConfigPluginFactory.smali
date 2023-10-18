.class public abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBcSmartspaceConfigPluginFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideBcSmartspaceConfigPlugin(Lcom/android/systemui/flags/FeatureFlags;)Lcom/android/systemui/smartspace/config/BcSmartspaceConfigProvider;
    .locals 1

    new-instance v0, Lcom/android/systemui/smartspace/config/BcSmartspaceConfigProvider;

    invoke-direct {v0, p0}, Lcom/android/systemui/smartspace/config/BcSmartspaceConfigProvider;-><init>(Lcom/android/systemui/flags/FeatureFlags;)V

    return-object v0
.end method
