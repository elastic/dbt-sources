
with source as (

    select * from {{ source('raw_netsuite', 'fam_repair__maint_sub_b') }}

),

renamed as (

    select
        date_created,
        fam_repair__maint_sub_b_extid,
        fam_repair__maint_sub_b_id,
        fam_repair__maint_sub_b_name,
        is_inactive,
        last_modified_date,
        mars_id,
        parent_id,
        subcategory_a_id,
        unit_of_measurement_id

    from source

)

select * from renamed
