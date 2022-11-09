
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_repair__maint_sub_b_history') }}

),

renamed as (

    select
        fam_repair__maint_sub_b_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        fam_repair__maint_sub_b_extid,
        fam_repair__maint_sub_b_name,
        is_inactive,
        last_modified_date,
        mars_id,
        parent_id,
        subcategory_a_id,
        unit_of_measurement_id,
        partition_date

    from source

)

select * from renamed
