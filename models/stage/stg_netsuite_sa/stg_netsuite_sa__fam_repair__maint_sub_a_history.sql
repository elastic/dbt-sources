
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_repair__maint_sub_a_history') }}

),

renamed as (

    select
        fam_repair__maint_sub_a_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        fam_repair__maint_sub_a_extid,
        fam_repair__maint_sub_a_name,
        is_inactive,
        last_modified_date,
        parent_id,
        repair__maintenance_categor_id,
        uniformat,
        partition_date

    from source

)

select * from renamed
