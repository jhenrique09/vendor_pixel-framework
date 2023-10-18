.class public abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideDateSmartspaceDataPluginFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideDateSmartspaceDataPlugin()Lcom/google/android/systemui/smartspace/DateSmartspaceDataProvider;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/smartspace/DateSmartspaceDataProvider;

    invoke-direct {v0}, Lcom/google/android/systemui/smartspace/DateSmartspaceDataProvider;-><init>()V

    return-object v0
.end method
