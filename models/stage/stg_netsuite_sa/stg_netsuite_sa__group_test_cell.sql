
with source as (

    select * from {{ source('raw_netsuite_sa', 'group_test_cell') }}

),

renamed as (

    select
        crm_group_id,
        test_cell_id,
        _fivetran_deleted,
        _fivetran_synced,
        cumulativepct,
        date_deleted,
        name,
        percentage,
        previouspct

    from source

)

select * from renamed
