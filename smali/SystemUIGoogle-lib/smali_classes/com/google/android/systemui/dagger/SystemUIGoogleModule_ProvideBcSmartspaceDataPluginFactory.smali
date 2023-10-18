.class public abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBcSmartspaceDataPluginFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideBcSmartspaceDataPlugin()Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;

    invoke-direct {v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;-><init>()V

    return-object v0
.end method
